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
struct TYPE_3__ {char* oid; scalar_t__ algID; scalar_t__ altAlgID; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char*) ; 
 TYPE_1__* oidToAlgID ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    int i;
    DWORD alg;

    /* Test with a bogus one */
    alg = FUNC1("1.2.3");
    FUNC2(!alg, "Expected failure, got %d\n", alg);

    for (i = 0; i < FUNC0(oidToAlgID); i++)
    {
        alg = FUNC1(oidToAlgID[i].oid);
        FUNC2(alg == oidToAlgID[i].algID || (oidToAlgID[i].altAlgID && alg == oidToAlgID[i].altAlgID),
         "Expected %d, got %d\n", oidToAlgID[i].algID, alg);
    }
}