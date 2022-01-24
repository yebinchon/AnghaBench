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
typedef  int /*<<< orphan*/  ulong32 ;
struct TYPE_3__ {int /*<<< orphan*/ * dk; } ;
typedef  TYPE_1__ des3_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(const unsigned char *ct, unsigned char *pt, const des3_key *des3)
{
    ulong32 work[2];
    FUNC0(work[0], ct+0);
    FUNC0(work[1], ct+4);
    FUNC2(work, des3->dk[0]);
    FUNC2(work, des3->dk[1]);
    FUNC2(work, des3->dk[2]);
    FUNC1(work[0],pt+0);
    FUNC1(work[1],pt+4);
}