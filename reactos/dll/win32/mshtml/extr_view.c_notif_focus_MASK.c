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
struct TYPE_3__ {int /*<<< orphan*/  focus; int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  IOleControlSite ;
typedef  TYPE_1__ HTMLDocumentObj ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IOleControlSite ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(HTMLDocumentObj *This)
{
    IOleControlSite *site;
    HRESULT hres;

    if(!This->client)
        return;

    hres = FUNC1(This->client, &IID_IOleControlSite, (void**)&site);
    if(FUNC0(hres))
        return;

    FUNC2(site, This->focus);
    FUNC3(site);
}