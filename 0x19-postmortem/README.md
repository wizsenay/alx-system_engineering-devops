# 0x19-postmortem
## Users unable to access their account
### Duration:
 To resolve the problem it takes 3 hours from 13:00 to 16:00 GTM,
### Impact:
 users are stacked to the gust mode model and can't log into their accounts and 25% of users of our website are affected by this bug
### root cause:
 before the bug started, we tried to add some new features to improve the security of our website and that new feature blocked our users from getting into their account
 
## Timeline

at **13:00** - the issue was detected by the Datadog monitoring tool and it read more than 300 errors

