#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  pszVal; } ;
struct TYPE_6__ {TYPE_1__ u; int /*<<< orphan*/  vt; } ;
typedef  TYPE_2__ PROPVARIANT ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  VT_LPSTR ; 
 int /*<<< orphan*/  VT_NULL ; 
 int /*<<< orphan*/  emptyW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  topic ; 
 int /*<<< orphan*/  topicW ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void)
{
    PROPVARIANT prop;
    WCHAR *str;
    HRESULT hres;

    prop.vt = VT_NULL;
    hres = FUNC3(&prop, &str);
    FUNC5(hres == S_OK, "returned %x\n", hres);
    FUNC5(!FUNC4(str, emptyW), "got %s\n", FUNC8(str));
    FUNC1(str);

    prop.vt = VT_LPSTR;
    prop.u.pszVal = FUNC0(FUNC7(topic)+1);
    FUNC6(prop.u.pszVal, topic);
    hres = FUNC3(&prop, &str);
    FUNC5(hres == S_OK, "returned %x\n", hres);
    FUNC5(!FUNC4(str, topicW), "got %s\n", FUNC8(str));
    FUNC1(str);
    FUNC2(&prop);
}