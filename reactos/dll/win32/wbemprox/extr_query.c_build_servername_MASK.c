#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct view {scalar_t__ proplist; } ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_COMPUTERNAME_LENGTH ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static BSTR FUNC4( const struct view *view )
{
    WCHAR server[MAX_COMPUTERNAME_LENGTH + 1], *p;
    DWORD len = FUNC0( server );

    if (view->proplist) return NULL;

    if (!(FUNC1( server, &len ))) return NULL;
    for (p = server; *p; p++) *p = FUNC3( *p );
    return FUNC2( server );
}