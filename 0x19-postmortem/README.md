# 0x19-postmortem
## Users unable to access their account
![server error](https://img.freepik.com/premium-vector/server-error-vector-concept_118813-15944.jpg?w=996)
### Duration:
 To resolve the problem it takes 3 hours from 13:00 to 16:00 GTM,
### Impact:
 users are stacked to the gust mode model and can't log into their accounts and 25% of users of our website are affected by this bug
### root cause:
 before the bug started, we tried to add some new features to improve the security of our website and that new feature blocked our users from getting into their account
 
## Timeline

at **13:00** - the issue was detected by the Datadog monitoring tool and it read more than 300 errors

at **13:15** - The team acknowledged the issue and began investigating it.

at **13:30** - and identify the real problem is the new security system, and start to resolve the bug.

at **15:25** - the issue is solved by the team.

at **16:00** - realise the new feature with its update.


## Root cause and resolution

When we attempt to enhance security, we add a more complex login method to the website's backend. When someone tries to log in, an encrypted code is generated and sent to the server. The server decrypts it and then re-encrypts it before sending it back to the client. If the client is unable to decrypt it, the login fails; otherwise, the process continues.

When we tried to write some code, we made a few mistakes. As a result, when the server tried to create the encrypted code using the decrypted information sent from the client, it also made some errors because of our code.

So, we worked on it and made the server to encrypt correctly. By doing some code updates, we made it work properly.
