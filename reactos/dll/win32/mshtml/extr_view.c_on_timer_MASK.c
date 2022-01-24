#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int update; scalar_t__ client; scalar_t__ hostui; int /*<<< orphan*/  hwnd; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  IOleCommandTarget ;
typedef  TYPE_1__ HTMLDocumentObj ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OLECMDEXECOPT_DONTPROMPTUSER ; 
 int /*<<< orphan*/  OLECMDID_UPDATECOMMANDS ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_ID ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*,int) ; 
 int UPDATE_UI ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static LRESULT FUNC8(HTMLDocumentObj *This)
{
    FUNC6("(%p) %x\n", This, This->update);

    FUNC4(This->hwnd, TIMER_ID);

    if(!This->update)
        return 0;

    if(This->update & UPDATE_UI) {
        if(This->hostui)
            FUNC0(This->hostui);

        if(This->client) {
            IOleCommandTarget *cmdtrg;
            HRESULT hres;

            hres = FUNC1(This->client, &IID_IOleCommandTarget,
                                                 (void**)&cmdtrg);
            if(FUNC5(hres)) {
                FUNC2(cmdtrg, NULL, OLECMDID_UPDATECOMMANDS,
                                       OLECMDEXECOPT_DONTPROMPTUSER, NULL, NULL);
                FUNC3(cmdtrg);
            }
        }
    }

    FUNC7(This);
    This->update = 0;
    return 0;
}