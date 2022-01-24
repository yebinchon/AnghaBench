#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int redialDelay; void* maxDials; int /*<<< orphan*/  acct; int /*<<< orphan*/  pass; int /*<<< orphan*/  user; void* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,char const** const,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__ gConn ; 
 int /*<<< orphan*/  gOptArg ; 
 int gOptInd ; 
 scalar_t__ gStartupUrlParameterGiven ; 

int
FUNC14(int argc, const char **const argv)
{
	int c;
	int n;

	FUNC8();
	while ((c = FUNC2(argc, argv, "P:u:p:J:rd:g:FVLD")) > 0) switch(c) {
		case 'P':
		case 'u':
		case 'p':
		case 'J':
			gStartupUrlParameterGiven = 1;
			break;
		case 'r':
		case 'g':
		case 'd':
		case 'V':
		case 'L':
		case 'D':
		case 'F':
			break;
		default:
			FUNC11();
	}

	if (gOptInd < argc) {
		FUNC4(0);
		FUNC10(argv[gOptInd]);
	} else if (gStartupUrlParameterGiven != 0) {
		/* One of the flags they specified
		 * requires a URL or hostname to
		 * open.
		 */
		FUNC11();
	}

	FUNC3();
	/* Allow command-line parameters to override
	 * bookmark settings.
	 */

	while ((c = FUNC2(argc, argv, "P:u:p:j:J:rd:g:FVLD")) > 0) switch(c) {
		case 'P':
			gConn.port = FUNC12(gOptArg);
			break;
		case 'u':
			(void) FUNC9(gConn.user, gOptArg);
			break;
		case 'p':
			(void) FUNC9(gConn.pass, gOptArg);	/* Don't recommend doing this! */
			break;
		case 'J':
		case 'j':
			(void) FUNC9(gConn.acct, gOptArg);
			break;
		case 'r':
			/* redial is always on */
			break;
		case 'g':
			gConn.maxDials = FUNC12(gOptArg);
			break;
		case 'd':
			n = FUNC12(gOptArg);
			if (n >= 10)
				gConn.redialDelay = n;
			break;
		case 'F':
			FUNC1();
			FUNC13(0);
			/*NOTREACHED*/
			break;
		case 'V':
			/*FALLTHROUGH*/
		case 'L':
			/*FALLTHROUGH*/
		case 'D':
			/* silently ignore these legacy options */
			break;
		default:
			FUNC11();
	}

	FUNC6();
	FUNC5();
	FUNC0();
	FUNC7();
	FUNC13(0);
}