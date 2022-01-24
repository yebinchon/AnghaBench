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
struct TYPE_3__ {int /*<<< orphan*/  const* name; } ;
typedef  TYPE_1__ domain_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static BOOL FUNC4( const WCHAR *name, domain_t *domain, BOOL partial )
{
    FUNC0("comparing %s with %s\n", FUNC1(name), FUNC1(domain->name));

    if (partial && !FUNC3( name, domain->name )) return FALSE;
    else if (!partial && FUNC2( name, domain->name )) return FALSE;
    return TRUE;
}