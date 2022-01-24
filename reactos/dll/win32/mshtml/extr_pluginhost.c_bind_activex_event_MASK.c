#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_17__ {int /*<<< orphan*/ * typeinfo; } ;
struct TYPE_16__ {TYPE_1__* plugin_host; } ;
struct TYPE_15__ {TYPE_5__* sink; int /*<<< orphan*/  plugin_unk; } ;
typedef  TYPE_1__ PluginHost ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  IProvideClassInfo ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_2__ HTMLPluginContainer ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  TYPE_1__* HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IID_IProvideClassInfo ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void FUNC14(HTMLDocumentNode *doc, HTMLPluginContainer *plugin_container, WCHAR *event, IDispatch *disp)
{
    PluginHost *plugin_host = plugin_container->plugin_host;
    ITypeInfo *class_info, *source_info;
    DISPID id;
    HRESULT hres;

    FUNC8("(%p %p %s %p)\n", doc, plugin_host, FUNC12(event), disp);

    if(!plugin_host || !plugin_host->plugin_unk) {
        FUNC9("detached element %p\n", plugin_host);
        return;
    }

    if(plugin_host->sink) {
        source_info = plugin_host->sink->typeinfo;
        FUNC4(source_info);
    }else {
        IProvideClassInfo *provide_ci;

        hres = FUNC7(plugin_host->plugin_unk, &IID_IProvideClassInfo, (void**)&provide_ci);
        if(FUNC0(hres)) {
            FUNC1("No IProvideClassInfo, try GetTypeInfo?\n");
            return;
        }

        hres = FUNC2(provide_ci, &class_info);
        FUNC3(provide_ci);
        if(FUNC0(hres) || !class_info) {
            FUNC9("GetClassInfo failed: %08x\n", hres);
            return;
        }

        source_info = FUNC13(plugin_container, class_info);
        FUNC6(class_info);
        if(!source_info)
            return;
    }

    hres = FUNC5(source_info, &event, 1, &id);
    if(FUNC0(hres))
        FUNC9("Could not get disp id: %08x\n", hres);
    else if(!plugin_host->sink)
        plugin_host->sink = FUNC11(plugin_host, source_info);

    FUNC6(source_info);
    if(FUNC0(hres) || !plugin_host->sink)
        return;

    FUNC10(plugin_host->sink, id, disp);
}