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
struct TYPE_3__ {int /*<<< orphan*/  IBindStatusCallback_iface; } ;
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DownloadBSC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

HRESULT FUNC4(IBindStatusCallback **ret)
{
    DownloadBSC *callback;
    HRESULT hres;

    hres = FUNC0(NULL, NULL, &callback);
    if(FUNC1(hres))
        return hres;

    hres = FUNC3(&callback->IBindStatusCallback_iface, ret);
    FUNC2(&callback->IBindStatusCallback_iface);
    return hres;
}