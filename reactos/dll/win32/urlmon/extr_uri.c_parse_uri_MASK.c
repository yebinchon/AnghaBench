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
struct TYPE_8__ {int /*<<< orphan*/ * uri; } ;
typedef  TYPE_1__ parse_data ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC6(parse_data *data, DWORD flags) {
    const WCHAR *ptr;
    const WCHAR **pptr;

    ptr = data->uri;
    pptr = &ptr;

    FUNC0("(%p %x): BEGINNING TO PARSE URI %s.\n", data, flags, FUNC1(data->uri));

    if(!FUNC5(pptr, data, flags, 0))
        return FALSE;

    if(!FUNC3(pptr, data, flags))
        return FALSE;

    if(!FUNC4(pptr, data, flags))
        return FALSE;

    if(!FUNC2(pptr, data, flags))
        return FALSE;

    FUNC0("(%p %x): FINISHED PARSING URI.\n", data, flags);
    return TRUE;
}