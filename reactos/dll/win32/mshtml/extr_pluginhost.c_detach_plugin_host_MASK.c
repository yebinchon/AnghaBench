#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * doc; int /*<<< orphan*/  entry; TYPE_2__* element; TYPE_1__* sink; int /*<<< orphan*/ * plugin_unk; scalar_t__ ip_object; scalar_t__ ui_active; } ;
struct TYPE_8__ {int /*<<< orphan*/ * plugin_host; } ;
struct TYPE_7__ {int /*<<< orphan*/  IDispatch_iface; int /*<<< orphan*/ * host; int /*<<< orphan*/  cookie; int /*<<< orphan*/  iid; } ;
typedef  TYPE_3__ PluginHost ;
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  IConnectionPointContainer ;
typedef  int /*<<< orphan*/  IConnectionPoint ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IConnectionPointContainer ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  OLECLOSE_NOSAVE ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 

void FUNC17(PluginHost *host)
{
    HRESULT hres;

    FUNC12("%p\n", host);

    if(!host->doc)
        return;

    if(host->ip_object) {
        if(host->ui_active)
            FUNC6(host->ip_object);
        FUNC5(host->ip_object);
    }

    if(host->plugin_unk) {
        IOleObject *ole_obj;

        hres = FUNC10(host->plugin_unk, &IID_IOleObject, (void**)&ole_obj);
        if(FUNC11(hres)) {
            if(!host->ip_object)
                FUNC7(ole_obj, OLECLOSE_NOSAVE);
            FUNC9(ole_obj, NULL);
            FUNC8(ole_obj);
        }
    }

    if(host->sink) {
        IConnectionPointContainer *cp_container;
        IConnectionPoint *cp;

        FUNC13(host->plugin_unk != NULL);

        hres = FUNC10(host->plugin_unk, &IID_IConnectionPointContainer, (void**)&cp_container);
        if(FUNC11(hres)) {
            hres = FUNC0(cp_container, &host->sink->iid, &cp);
            FUNC1(cp_container);
            if(FUNC11(hres)) {
                FUNC3(cp, host->sink->cookie);
                FUNC2(cp);
            }
        }

        host->sink->host = NULL;
        FUNC4(&host->sink->IDispatch_iface);
        host->sink = NULL;
    }

    FUNC16(host);

    if(host->element) {
        host->element->plugin_host = NULL;
        host->element = NULL;
    }

    FUNC15(&host->entry);
    FUNC14(&host->entry);
    host->doc = NULL;
}