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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int len; } ;
typedef  TYPE_1__ ME_Run ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC2( const ME_Run *run )
{
    WCHAR *str = FUNC1( run, 0 ), *p;
    int i;

    for (i = 0, p = str; i < run->len; i++, p++)
        if (!FUNC0( *p )) return FALSE;

    return TRUE;
}