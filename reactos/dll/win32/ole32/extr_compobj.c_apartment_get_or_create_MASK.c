#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* apt; } ;
struct TYPE_9__ {int /*<<< orphan*/  oxid; scalar_t__ main; } ;
typedef  int DWORD ;
typedef  TYPE_1__ APARTMENT ;

/* Variables and functions */
 int COINIT_APARTMENTTHREADED ; 
 TYPE_1__* FUNC0 () ; 
 TYPE_7__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* MTA ; 
 TYPE_1__* MainApartment ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  csApartment ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static APARTMENT *FUNC9(DWORD model)
{
    APARTMENT *apt = FUNC0();

    if (!apt)
    {
        if (model & COINIT_APARTMENTTHREADED)
        {
            FUNC2(&csApartment);

            apt = FUNC6(model);
            if (!MainApartment)
            {
                MainApartment = apt;
                apt->main = TRUE;
                FUNC4("Created main-threaded apartment with OXID %s\n", FUNC8(apt->oxid));
            }

            FUNC3(&csApartment);

            if (apt->main)
                FUNC7(apt);
        }
        else
        {
            FUNC2(&csApartment);

            /* The multi-threaded apartment (MTA) contains zero or more threads interacting
             * with free threaded (ie thread safe) COM objects. There is only ever one MTA
             * in a process */
            if (MTA)
            {
                FUNC4("entering the multithreaded apartment %s\n", FUNC8(MTA->oxid));
                FUNC5(MTA);
            }
            else
                MTA = FUNC6(model);

            apt = MTA;

            FUNC3(&csApartment);
        }
        FUNC1()->apt = apt;
    }

    return apt;
}