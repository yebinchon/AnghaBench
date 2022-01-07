
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_17__ ;


typedef int cwd ;
struct TYPE_26__ {TYPE_1__* first; } ;
struct TYPE_25__ {scalar_t__ firewallType; char* magic; char* user; char* pass; int errNo; char* host; char* firewallUser; char* firewallPass; char* acct; int loggedIn; scalar_t__ doNotGetStartingWorkingDirectory; char curTransferType; scalar_t__ leavePass; int * startingWorkingDirectory; int (* onLoginMsgProc ) (TYPE_3__* const,TYPE_2__*) ;int (* passphraseProc ) (TYPE_3__* const,TYPE_7__*,char*,int) ;TYPE_17__* lip; } ;
struct TYPE_24__ {int code; TYPE_7__ msg; } ;
struct TYPE_23__ {int line; } ;
struct TYPE_22__ {char* defaultAnonPassword; } ;
typedef TYPE_2__* ResponsePtr ;
typedef TYPE_3__* FTPCIPtr ;


 int DoneWithResponse (TYPE_3__* const,TYPE_2__*) ;
 int Error (TYPE_3__* const,int ,char*,...) ;
 scalar_t__ FTPGetCWD (TYPE_3__* const,char*,int) ;
 int FTPInitializeAnonPassword (TYPE_17__*) ;
 TYPE_2__* InitResponse () ;
 int NoGetPassphraseProc (TYPE_3__* const,TYPE_7__*,char*,int) ;
 int PrintF (TYPE_3__* const,char*,char*,char*) ;
 int RCmd (TYPE_3__* const,TYPE_2__*,char*,char*,...) ;
 int ReInitResponse (TYPE_3__* const,TYPE_2__*) ;
 int STRNCPY (char*,char*) ;
 int * StrDup (char*) ;
 int free (int *) ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrBadRemoteUser ;
 int kErrBadRemoteUserOrPassword ;
 int kErrHostDisconnectedDuringLogin ;
 int kErrLoginFailed ;
 void* kErrMallocFailed ;
 scalar_t__ kFirewallFwuAtSiteFwpUserPass ;
 scalar_t__ kFirewallLastType ;
 scalar_t__ kFirewallLoginThenUserAtSite ;
 scalar_t__ kFirewallNotInUse ;
 scalar_t__ kFirewallOpenSite ;
 scalar_t__ kFirewallSiteSite ;
 scalar_t__ kFirewallUserAtSite ;
 scalar_t__ kFirewallUserAtSiteFwuPassFwp ;
 scalar_t__ kFirewallUserAtUserPassAtPass ;
 char* kLibraryMagic ;
 scalar_t__ kNoErr ;
 int memset (char*,char,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int stub1 (TYPE_3__* const,TYPE_7__*,char*,int) ;
 int stub2 (TYPE_3__* const,TYPE_2__*) ;

int
FTPLoginHost(const FTPCIPtr cip)
{
 ResponsePtr rp;
 int result = kErrLoginFailed;
 int anonLogin;
 int sentpass = 0;
 int fwloggedin;
 int firstTime;
 char cwd[512];

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if ((cip->firewallType < kFirewallNotInUse) || (cip->firewallType > kFirewallLastType))
  return (kErrBadParameter);

 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 anonLogin = 0;
 if (cip->user[0] == '\0')
  (void) STRNCPY(cip->user, "anonymous");
 if ((strcmp(cip->user, "anonymous") == 0) || (strcmp(cip->user, "ftp") == 0)) {
  anonLogin = 1;



  if (cip->pass[0] == '\0') {
   FTPInitializeAnonPassword(cip->lip);
   (void) STRNCPY(cip->pass, cip->lip->defaultAnonPassword);
  }
 }

 rp = InitResponse();
 if (rp == ((void*)0)) {
  result = kErrMallocFailed;
  cip->errNo = kErrMallocFailed;
  goto done2;
 }

 for (firstTime = 1, fwloggedin = 0; ; ) {
  if (firstTime != 0) {
   rp->code = 220;
   firstTime = 0;
  } else if (result < 0) {
   goto done;
  }

  switch (rp->code) {
   case 220:
    if ((cip->firewallType == kFirewallNotInUse) || (fwloggedin != 0)) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "USER %s", cip->user);
    } else if (cip->firewallType == kFirewallUserAtSite) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "USER %s@%s", cip->user, cip->host);
    } else if (cip->firewallType == kFirewallUserAtUserPassAtPass) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "USER %s@%s@%s", cip->user, cip->firewallUser, cip->host);
    } else if (cip->firewallType == kFirewallUserAtSiteFwuPassFwp) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "USER %s@%s %s", cip->user, cip->host, cip->firewallUser);
    } else if (cip->firewallType == kFirewallFwuAtSiteFwpUserPass) {

     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "USER %s@%s", cip->firewallUser, cip->host);
    } else if (cip->firewallType > kFirewallNotInUse) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "USER %s", cip->firewallUser);
    } else {
     goto unknown;
    }
    break;

   case 230:
   case 231:
   case 202:
    if ((cip->firewallType == kFirewallNotInUse) || (fwloggedin != 0))
     goto okay;


    fwloggedin++;

    if (cip->firewallType == kFirewallLoginThenUserAtSite) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "USER %s@%s", cip->user, cip->host);
    } else if (cip->firewallType == kFirewallUserAtUserPassAtPass) {
     goto okay;
    } else if (cip->firewallType == kFirewallOpenSite) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "OPEN %s", cip->host);
    } else if (cip->firewallType == kFirewallSiteSite) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "SITE %s", cip->host);
    } else if (cip->firewallType == kFirewallFwuAtSiteFwpUserPass) {

     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "USER %s", cip->user);
    } else {
     goto okay;
    }
    break;

   case 421:
    result = kErrHostDisconnectedDuringLogin;
    goto done;

   case 331:
    if ((cip->firewallType == kFirewallNotInUse) || (fwloggedin != 0)) {
     if ((cip->pass[0] == '\0') && (cip->passphraseProc != NoGetPassphraseProc))
      (*cip->passphraseProc)(cip, &rp->msg, cip->pass, sizeof(cip->pass));
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "PASS %s", cip->pass);
    } else if (cip->firewallType == kFirewallUserAtSite) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "PASS %s", cip->pass);
    } else if (cip->firewallType == kFirewallUserAtUserPassAtPass) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "PASS %s@%s", cip->pass, cip->firewallPass);
    } else if (cip->firewallType == kFirewallUserAtSiteFwuPassFwp) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "PASS %s", cip->pass);
    } else if (cip->firewallType == kFirewallFwuAtSiteFwpUserPass) {

     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "PASS %s", cip->firewallPass);
    } else if (cip->firewallType > kFirewallNotInUse) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "PASS %s", cip->firewallPass);
    } else {
     goto unknown;
    }
    sentpass++;
    break;

   case 332:
   case 532:
    if ((cip->firewallType == kFirewallNotInUse) || (fwloggedin != 0)) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "ACCT %s", cip->acct);
    } else if (cip->firewallType == kFirewallUserAtSiteFwuPassFwp) {
     ReInitResponse(cip, rp);
     result = RCmd(cip, rp, "ACCT %s", cip->firewallPass);
    } else {

     goto unknown;
    }
    break;

   case 530:
    result = (sentpass != 0) ? kErrBadRemoteUserOrPassword : kErrBadRemoteUser;
    goto done;

   case 501:
   case 503:
   case 550:
    goto done;

   default:
   unknown:
    if (rp->msg.first == ((void*)0)) {
     Error(cip, kDontPerror, "Lost connection during login.\n");
    } else {
     Error(cip, kDontPerror, "Unexpected response: %s\n",
      rp->msg.first->line
     );
    }
    goto done;
  }
 }

okay:

 if (cip->onLoginMsgProc != 0)
  (*cip->onLoginMsgProc)(cip, rp);
 DoneWithResponse(cip, rp);
 result = 0;
 cip->loggedIn = 1;





 if (cip->startingWorkingDirectory != ((void*)0)) {
  free(cip->startingWorkingDirectory);
  cip->startingWorkingDirectory = ((void*)0);
 }
 if ((cip->doNotGetStartingWorkingDirectory == 0) &&
  (FTPGetCWD(cip, cwd, sizeof(cwd)) == kNoErr))
 {
  cip->startingWorkingDirectory = StrDup(cwd);
 }


 cip->curTransferType = 'A';
 PrintF(cip, "Logged in to %s as %s.\n", cip->host, cip->user);


 if ((anonLogin == 0) && (cip->leavePass == 0))
  (void) memset(cip->pass, '*', strlen(cip->pass));

 if (result < 0)
  cip->errNo = result;
 return result;

done:
 DoneWithResponse(cip, rp);

done2:

 if ((anonLogin == 0) && (cip->leavePass == 0))
  (void) memset(cip->pass, '*', strlen(cip->pass));
 if (result < 0)
  cip->errNo = result;
 return result;
}
