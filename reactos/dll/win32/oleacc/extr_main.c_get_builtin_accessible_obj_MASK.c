#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * accessible_create ;
struct TYPE_7__ {int idx; int /*<<< orphan*/ * create_window; int /*<<< orphan*/ * create_client; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ OBJID_CLIENT ; 
 int /*<<< orphan*/  OBJID_QUERYCLASSNAMEIDX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  WM_GETOBJECT ; 
 TYPE_1__* builtin_classes ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static accessible_create FUNC8(HWND hwnd, LONG objid)
{
    WCHAR class_name[64];
    int i, idx;

    if(!FUNC2(hwnd, class_name, FUNC0(class_name)))
        return NULL;
    FUNC4("got window class: %s\n", FUNC6(class_name));

    for(i=0; i<FUNC0(builtin_classes); i++) {
        if(!FUNC7(class_name, builtin_classes[i].name)) {
            accessible_create ret;

            ret = (objid==OBJID_CLIENT ?
                    builtin_classes[i].create_client :
                    builtin_classes[i].create_window);
            if(!ret)
                FUNC1("unhandled window class: %s\n", FUNC6(class_name));
            return ret;
        }
    }

    idx = FUNC3(hwnd, WM_GETOBJECT, 0, OBJID_QUERYCLASSNAMEIDX);
    if(idx) {
        for(i=0; i<FUNC0(builtin_classes); i++) {
            if(idx == builtin_classes[i].idx) {
                accessible_create ret;

                ret = (objid==OBJID_CLIENT ?
                        builtin_classes[i].create_client :
                        builtin_classes[i].create_window);
                if(!ret)
                    FUNC1("unhandled class name idx: %x\n", idx);
                return ret;
            }
        }

        FUNC5("unhandled class name idx: %x\n", idx);
    }

    return NULL;
}