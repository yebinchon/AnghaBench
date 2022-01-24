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
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  scalar_t__ HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GENERIC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_OPENIF ; 
 scalar_t__ STATUS_OBJECT_NAME_EXISTS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC5( HANDLE dir, const char *name )
{
    NTSTATUS status;
    UNICODE_STRING str;
    OBJECT_ATTRIBUTES attr;
    HANDLE h = 0;

    FUNC3(&str, name);
    FUNC0(&attr, &str, OBJ_OPENIF, dir, NULL);
    status = FUNC2(&h, GENERIC_ALL, &attr, FALSE);
    FUNC4(&str);
    if (h) FUNC1( h );
    return (status == STATUS_OBJECT_NAME_EXISTS);
}