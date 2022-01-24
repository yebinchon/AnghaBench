#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* self; } ;
typedef  TYPE_1__ MIDIMAPDATA ;
typedef  int /*<<< orphan*/  LPMIDIOPENDESC ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  MIDIERR_INVALIDSETUP ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  MMSYSERR_NOMEM ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static	DWORD	FUNC5(DWORD_PTR *lpdwUser, LPMIDIOPENDESC lpDesc, DWORD dwFlags)
{
    MIDIMAPDATA*	mom = FUNC1(FUNC0(), 0, sizeof(MIDIMAPDATA));

    FUNC4("(%p %p %08lx)\n", lpdwUser, lpDesc, dwFlags);

    if (!mom) return MMSYSERR_NOMEM;

    if (FUNC3(mom))
    {
	*lpdwUser = (DWORD_PTR)mom;
	mom->self = mom;

	return MMSYSERR_NOERROR;
    }
    FUNC2(FUNC0(), 0, mom);
    return MIDIERR_INVALIDSETUP;
}