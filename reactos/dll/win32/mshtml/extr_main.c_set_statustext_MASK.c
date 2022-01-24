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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  frame; } ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int INT ;
typedef  TYPE_1__ HTMLDocumentObj ;
typedef  int DWORD ;

/* Variables and functions */
 int IDS_STATUS_FIRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** status_strings ; 

void FUNC8(HTMLDocumentObj* doc, INT id, LPCWSTR arg)
{
    int index = id - IDS_STATUS_FIRST;
    WCHAR *p = status_strings[index];
    DWORD len;

    if(!doc->frame)
        return;

    if(!p) {
        len = 255;
        p = FUNC3(len * sizeof(WCHAR));
        len = FUNC2(hInst, id, p, len) + 1;
        p = FUNC5(p, len * sizeof(WCHAR));
        if(FUNC1((void**)&status_strings[index], p, NULL)) {
            FUNC4(p);
            p = status_strings[index];
        }
    }

    if(arg) {
        WCHAR *buf;

        len = FUNC6(p) + FUNC6(arg) - 1;
        buf = FUNC3(len * sizeof(WCHAR));

        FUNC7(buf, len, p, arg);

        p = buf;
    }

    FUNC0(doc->frame, p);

    if(arg)
        FUNC4(p);
}