#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cAltEntry; int /*<<< orphan*/ * rgAltEntry; } ;
typedef  size_t DWORD ;
typedef  TYPE_1__ CERT_ALT_NAME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(const CERT_ALT_NAME_INFO *expected,
 const CERT_ALT_NAME_INFO *got)
{
    DWORD i;

    FUNC2(expected->cAltEntry == got->cAltEntry, "Expected %d entries, got %d\n",
     expected->cAltEntry, got->cAltEntry);
    for (i = 0; i < FUNC1(expected->cAltEntry, got->cAltEntry); i++)
        FUNC0(&expected->rgAltEntry[i], &got->rgAltEntry[i]);
}