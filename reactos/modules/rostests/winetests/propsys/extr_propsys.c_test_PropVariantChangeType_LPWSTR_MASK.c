#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {void* pwszVal; void* pszVal; } ;
struct TYPE_8__ {scalar_t__ vt; TYPE_1__ u; } ;
typedef  TYPE_2__ PROPVARIANT ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ S_OK ; 
 scalar_t__ VT_LPSTR ; 
 scalar_t__ VT_LPWSTR ; 
 scalar_t__ VT_NULL ; 
 int /*<<< orphan*/  emptyW ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  topic ; 
 int /*<<< orphan*/  topicW ; 
 scalar_t__ FUNC10 (void*) ; 

__attribute__((used)) static void FUNC11(void)
{
    PROPVARIANT dest, src;
    HRESULT hr;

    FUNC3(&dest);

    src.vt = VT_NULL;
    hr = FUNC1(&dest, &src, 0, VT_LPWSTR);
    FUNC7(hr == S_OK, "hr=%x\n", hr);
    FUNC7(dest.vt == VT_LPWSTR, "got %d\n", dest.vt);
    FUNC7(!FUNC4(dest.u.pwszVal, emptyW), "got %s\n", FUNC10(dest.u.pwszVal));
    FUNC2(&dest);
    FUNC2(&src);

    src.vt = VT_LPSTR;
    src.u.pszVal = FUNC0(FUNC9(topic)+1);
    FUNC8(src.u.pszVal, topic);
    hr = FUNC1(&dest, &src, 0, VT_LPWSTR);
    FUNC7(hr == S_OK, "hr=%x\n", hr);
    FUNC7(dest.vt == VT_LPWSTR, "got %d\n", dest.vt);
    FUNC7(!FUNC4(dest.u.pwszVal, topicW), "got %s\n", FUNC10(dest.u.pwszVal));
    FUNC2(&dest);
    FUNC2(&src);

    src.vt = VT_LPWSTR;
    src.u.pwszVal = FUNC0( (FUNC6(topicW)+1) * sizeof(WCHAR));
    FUNC5(src.u.pwszVal, topicW);
    hr = FUNC1(&dest, &src, 0, VT_LPWSTR);
    FUNC7(hr == S_OK, "hr=%x\n", hr);
    FUNC7(dest.vt == VT_LPWSTR, "got %d\n", dest.vt);
    FUNC7(!FUNC4(dest.u.pwszVal, topicW), "got %s\n", FUNC10(dest.u.pwszVal));
    FUNC2(&dest);
    FUNC2(&src);
}