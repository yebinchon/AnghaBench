#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {TYPE_2__* window; } ;
struct TYPE_10__ {TYPE_1__ basedoc; } ;
struct TYPE_9__ {int load_flags; int /*<<< orphan*/  url; int /*<<< orphan*/ * mon; TYPE_7__* doc_obj; } ;
typedef  int /*<<< orphan*/  IUriContainer ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  TYPE_2__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int BINDING_REFRESH ; 
 int BINDING_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IUriContainer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCRIPTMODE_ACTIVESCRIPT ; 
 int /*<<< orphan*/  SCRIPTMODE_GECKO ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 

void FUNC18(HTMLOuterWindow *This, IMoniker *mon, DWORD flags)
{
    IUriContainer *uri_container;
    IUri *uri = NULL;
    HRESULT hres;

    if(This->mon) {
        if(This->doc_obj && !(flags & (BINDING_REPLACE|BINDING_REFRESH))) {
            if(This == This->doc_obj->basedoc.window)
                FUNC14(This->doc_obj);
            else
                FUNC11("Skipping travellog update for frame navigation.\n");
        }
        FUNC5(This->mon);
        This->mon = NULL;
    }

    This->load_flags = flags;
    if(!mon)
        return;

    FUNC2(mon);
    This->mon = mon;

    hres = FUNC4(mon, &IID_IUriContainer, (void**)&uri_container);
    if(FUNC9(hres)) {
        hres = FUNC6(uri_container, &uri);
        FUNC7(uri_container);
        if(hres != S_OK) {
            FUNC12("GetIUri failed: %08x\n", hres);
            uri = NULL;
        }
    }

    if(!uri) {
        WCHAR *url;

        hres = FUNC3(mon, NULL, NULL, &url);
        if(FUNC9(hres)) {
            hres = FUNC13(url, 0, &uri);
            if(FUNC1(hres)) {
                FUNC12("CrateUri failed: %08x\n", hres);
                FUNC15(This, NULL);
                This->url = FUNC10(url);
                FUNC0(url);
                return;
            }
            FUNC0(url);
        }else {
            FUNC12("GetDisplayName failed: %08x\n", hres);
        }
    }

    FUNC15(This, uri);
    if(uri)
        FUNC8(uri);
    FUNC16(This, FUNC17(This) ? SCRIPTMODE_GECKO : SCRIPTMODE_ACTIVESCRIPT);
}