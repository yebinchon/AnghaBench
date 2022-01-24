#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ linenr_T ;
struct TYPE_3__ {scalar_t__ line1; scalar_t__ line2; scalar_t__ arg; } ;
typedef  TYPE_1__ exarg_T ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOT_VALID ; 
 scalar_t__ OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ T_STRING ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

void FUNC18(exarg_T *eap)
{
    int state;
    linenr_T i;

    if (FUNC7())
    {
	if (FUNC15(eap->line1 - 1, eap->line2 + 1) != OK)
	    return;
	for (i = eap->line1; i <= eap->line2; i++) {
	    VALUE line;

	    line = FUNC17((char *)FUNC10(i));
	    FUNC13(line);
	    FUNC9((char *) eap->arg, &state);
	    if (state) {
		FUNC8(state);
		break;
	    }
	    line = FUNC12();
	    if (!FUNC1(line)) {
		if (FUNC3(line) != T_STRING) {
		    FUNC0(FUNC4("E265: $_ must be an instance of String"));
		    return;
		}
		FUNC11(i, (char_u *) FUNC2(line), 1);
		FUNC5();
#ifdef SYNTAX_HL
		syn_changed(i); /* recompute syntax hl. for this line */
#endif
	    }
	}
	FUNC6();
	FUNC16(NOT_VALID);
    }
}