local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-gemini') {
  settings+: {
    billing_email: "webmaster@eclipse.org",
    default_repository_permission: "none",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "",
    members_can_change_project_visibility: false,
    name: "Eclipse Gemini",
    packages_containers_internal: false,
    packages_containers_public: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  webhooks+: [
    orgs.newOrgWebhook('https://ci.eclipse.org/gemini/github-webhook/') {
      content_type: "json",
      events+: [
        "pull_request",
        "push"
      ],
    },
  ],
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      description: "Global configurations for the eclipse-gemini GitHub organization",
    },
    orgs.newRepo('gemini-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.blueprint') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_issues: false,
      has_wiki: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.blueprint-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.dbaccess') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.dbaccess-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.dbaccess.postgresql') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.jpa') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "1.0.0",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.jpa-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.management') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "main",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.management-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "main",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.naming') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.naming-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.web') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('gemini.web-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
  ],
}
