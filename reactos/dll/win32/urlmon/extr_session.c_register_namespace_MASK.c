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
struct TYPE_3__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  protocol; scalar_t__ urlmon; int /*<<< orphan*/  clsid; int /*<<< orphan*/ * cf; } ;
typedef  TYPE_1__ name_space ;
typedef  int /*<<< orphan*/ * REFIID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  name_space_list ; 
 int /*<<< orphan*/  session_cs ; 

HRESULT FUNC6(IClassFactory *cf, REFIID clsid, LPCWSTR protocol, BOOL urlmon_protocol)
{
    name_space *new_name_space;

    new_name_space = FUNC3(sizeof(name_space));

    if(!urlmon_protocol)
        FUNC1(cf);
    new_name_space->cf = cf;
    new_name_space->clsid = *clsid;
    new_name_space->urlmon = urlmon_protocol;
    new_name_space->protocol = FUNC4(protocol);

    FUNC0(&session_cs);

    FUNC5(&name_space_list, &new_name_space->entry);

    FUNC2(&session_cs);

    return S_OK;
}