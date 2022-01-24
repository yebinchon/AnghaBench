#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cwd ;
struct TYPE_26__ {TYPE_1__* first; } ;
struct TYPE_25__ {scalar_t__ firewallType; char* magic; char* user; char* pass; int errNo; char* host; char* firewallUser; char* firewallPass; char* acct; int loggedIn; scalar_t__ doNotGetStartingWorkingDirectory; char curTransferType; scalar_t__ leavePass; int /*<<< orphan*/ * startingWorkingDirectory; int /*<<< orphan*/  (* onLoginMsgProc ) (TYPE_3__* const,TYPE_2__*) ;int /*<<< orphan*/  (* passphraseProc ) (TYPE_3__* const,TYPE_7__*,char*,int) ;TYPE_17__* lip; } ;
struct TYPE_24__ {int code; TYPE_7__ msg; } ;
struct TYPE_23__ {int /*<<< orphan*/  line; } ;
struct TYPE_22__ {char* defaultAnonPassword; } ;
typedef  TYPE_2__* ResponsePtr ;
typedef  TYPE_3__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__* const,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__* const,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (TYPE_3__* const,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_17__*) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__* const,TYPE_7__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__* const,char*,char*,char*) ; 
 int FUNC7 (TYPE_3__* const,TYPE_2__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__* const,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kDontPerror ; 
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
 int /*<<< orphan*/  FUNC12 (char*,char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__* const,TYPE_7__*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__* const,TYPE_2__*) ; 

int
FUNC17(const FTPCIPtr cip)
{
	ResponsePtr rp;
	int result = kErrLoginFailed;
	int anonLogin;
	int sentpass = 0;
	int fwloggedin;
	int firstTime;
	char cwd[512];

	if (cip == NULL)
		return (kErrBadParameter);
	if ((cip->firewallType < kFirewallNotInUse) || (cip->firewallType > kFirewallLastType))
		return (kErrBadParameter);

	if (FUNC13(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	anonLogin = 0;
	if (cip->user[0] == '\0')
		(void) FUNC9(cip->user, "anonymous");
	if ((FUNC13(cip->user, "anonymous") == 0) || (FUNC13(cip->user, "ftp") == 0)) {
		anonLogin = 1;
		/* Try to get the email address if you didn't specify
		 * a password when the user is anonymous.
		 */
		if (cip->pass[0] == '\0') {
			FUNC3(cip->lip);
			(void) FUNC9(cip->pass, cip->lip->defaultAnonPassword);
		}
	}

	rp = FUNC4();
	if (rp == NULL) {
		result = kErrMallocFailed;
		cip->errNo = kErrMallocFailed;
		goto done2;
	}

	for (firstTime = 1, fwloggedin = 0; ; ) {
		/* Here's a mini finite-automaton for the login process.
		 *
		 * Originally, the FTP protocol was designed to be entirely
		 * implementable from a FA.  It could be done, but I don't think
		 * it's something an interactive process could be the most
		 * effective with.
		 */

		if (firstTime != 0) {
			rp->code = 220;
			firstTime = 0;
		} else if (result < 0) {
			goto done;
		}

		switch (rp->code) {
			case 220:	/* Welcome, ready for new user. */
				if ((cip->firewallType == kFirewallNotInUse) || (fwloggedin != 0)) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "USER %s", cip->user);
				} else if (cip->firewallType == kFirewallUserAtSite) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "USER %s@%s", cip->user, cip->host);
				} else if (cip->firewallType == kFirewallUserAtUserPassAtPass) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "USER %s@%s@%s", cip->user, cip->firewallUser, cip->host);
				} else if (cip->firewallType == kFirewallUserAtSiteFwuPassFwp) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "USER %s@%s %s", cip->user, cip->host, cip->firewallUser);
				} else if (cip->firewallType == kFirewallFwuAtSiteFwpUserPass) {
					/* only reached when !fwloggedin */
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "USER %s@%s", cip->firewallUser, cip->host);
				} else if (cip->firewallType > kFirewallNotInUse) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "USER %s", cip->firewallUser);
				} else {
					goto unknown;
				}
				break;

			case 230:	/* 230 User logged in, proceed. */
			case 231:	/* User name accepted. */
			case 202:	/* Command not implemented, superfluous at this site. */
				if ((cip->firewallType == kFirewallNotInUse) || (fwloggedin != 0))
					goto okay;

				/* Now logged in to the firewall. */
				fwloggedin++;

				if (cip->firewallType == kFirewallLoginThenUserAtSite) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "USER %s@%s", cip->user, cip->host);
				} else if (cip->firewallType == kFirewallUserAtUserPassAtPass) {
					goto okay;
				} else if (cip->firewallType == kFirewallOpenSite) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "OPEN %s", cip->host);
				} else if (cip->firewallType == kFirewallSiteSite) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "SITE %s", cip->host);
				} else if (cip->firewallType == kFirewallFwuAtSiteFwpUserPass) {
					/* only reached when !fwloggedin */
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "USER %s", cip->user);
				} else /* kFirewallUserAtSite */ {
					goto okay;
				}
				break;

			case 421:	/* 421 Service not available, closing control connection. */
				result = kErrHostDisconnectedDuringLogin;
				goto done;

			case 331:	/* 331 User name okay, need password. */
				if ((cip->firewallType == kFirewallNotInUse) || (fwloggedin != 0)) {
					if ((cip->pass[0] == '\0') && (cip->passphraseProc != NoGetPassphraseProc))
						(*cip->passphraseProc)(cip, &rp->msg, cip->pass, sizeof(cip->pass));
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "PASS %s", cip->pass);
				} else if (cip->firewallType == kFirewallUserAtSite) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "PASS %s", cip->pass);
				} else if (cip->firewallType == kFirewallUserAtUserPassAtPass) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "PASS %s@%s", cip->pass, cip->firewallPass);
				} else if (cip->firewallType == kFirewallUserAtSiteFwuPassFwp) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "PASS %s", cip->pass);
				} else if (cip->firewallType == kFirewallFwuAtSiteFwpUserPass) {
					/* only reached when !fwloggedin */
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "PASS %s", cip->firewallPass);
				} else if (cip->firewallType > kFirewallNotInUse) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "PASS %s", cip->firewallPass);
				} else {
					goto unknown;
				}
				sentpass++;
				break;

			case 332:	/* 332 Need account for login. */
			case 532: 	/* 532 Need account for storing files. */
				if ((cip->firewallType == kFirewallNotInUse) || (fwloggedin != 0)) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "ACCT %s", cip->acct);
				} else if (cip->firewallType == kFirewallUserAtSiteFwuPassFwp) {
					FUNC8(cip, rp);
					result = FUNC7(cip, rp, "ACCT %s", cip->firewallPass);
				} else {
					/* ACCT not supported on firewall. */
					goto unknown;
				}
				break;

			case 530:	/* Not logged in. */
				result = (sentpass != 0) ? kErrBadRemoteUserOrPassword : kErrBadRemoteUser;
				goto done;

			case 501:	/* Syntax error in parameters or arguments. */
			case 503:	/* Bad sequence of commands. */
			case 550:	/* Can't set guest privileges. */
				goto done;

			default:
			unknown:
				if (rp->msg.first == NULL) {
					FUNC1(cip, kDontPerror, "Lost connection during login.\n");
				} else {
					FUNC1(cip, kDontPerror, "Unexpected response: %s\n",
						rp->msg.first->line
					);
				}
				goto done;
		}
	}

okay:
	/* Do the application's connect message callback, if present. */
	if (cip->onLoginMsgProc != 0)
		(*cip->onLoginMsgProc)(cip, rp);
	FUNC0(cip, rp);
	result = 0;
	cip->loggedIn = 1;

	/* Make a note of what our root directory is.
	 * This is often different from "/" when not
	 * logged in anonymously.
	 */
	if (cip->startingWorkingDirectory != NULL) {
		FUNC11(cip->startingWorkingDirectory);
		cip->startingWorkingDirectory = NULL;
	}
	if ((cip->doNotGetStartingWorkingDirectory == 0) &&
		(FUNC2(cip, cwd, sizeof(cwd)) == kNoErr))
	{
		cip->startingWorkingDirectory = FUNC10(cwd);
	}

	/* When a new site is opened, ASCII mode is assumed (by protocol). */
	cip->curTransferType = 'A';
	FUNC6(cip, "Logged in to %s as %s.\n", cip->host, cip->user);

	/* Don't leave cleartext password in memory. */
	if ((anonLogin == 0) && (cip->leavePass == 0))
		(void) FUNC12(cip->pass, '*', FUNC14(cip->pass));

	if (result < 0)
		cip->errNo = result;
	return result;

done:
	FUNC0(cip, rp);

done2:
	/* Don't leave cleartext password in memory. */
	if ((anonLogin == 0) && (cip->leavePass == 0))
		(void) FUNC12(cip->pass, '*', FUNC14(cip->pass));
	if (result < 0)
		cip->errNo = result;
	return result;
}