#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  progids; int /*<<< orphan*/  extensions; int /*<<< orphan*/  mimes; int /*<<< orphan*/  classes; } ;
typedef  TYPE_1__ MSIPACKAGE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static UINT FUNC7( MSIPACKAGE *package )
{
    UINT r;

    FUNC0("Loading all the class info and related tables\n");

    /* check if already loaded */
    if (!FUNC1( &package->classes ) ||
        !FUNC1( &package->mimes ) ||
        !FUNC1( &package->extensions ) ||
        !FUNC1( &package->progids )) return ERROR_SUCCESS;

    r = FUNC2( package );
    if (r != ERROR_SUCCESS) return r;

    r = FUNC3( package );
    if (r != ERROR_SUCCESS) return r;

    r = FUNC5( package );
    if (r != ERROR_SUCCESS) return r;

    /* these loads must come after the other loads */
    r = FUNC6( package );
    if (r != ERROR_SUCCESS) return r;

    return FUNC4( package );
}