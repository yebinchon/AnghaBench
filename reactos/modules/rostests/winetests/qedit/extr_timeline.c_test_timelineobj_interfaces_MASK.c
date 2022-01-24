#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IAMTimelineObj ;
typedef  int /*<<< orphan*/  IAMTimelineGroup ;
typedef  int /*<<< orphan*/  IAMTimeline ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_AMTimeline ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAMTimeline ; 
 int /*<<< orphan*/  IID_IAMTimelineGroup ; 
 int /*<<< orphan*/  IID_IAMTimelineObj ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TIMELINE_MAJOR_TYPE_GROUP ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

__attribute__((used)) static void FUNC9(void)
{
    HRESULT hr;
    IAMTimeline *timeline = NULL;
    IAMTimelineObj *obj;

    hr = FUNC0(&CLSID_AMTimeline, NULL, CLSCTX_INPROC_SERVER, &IID_IAMTimeline, (void **)&timeline);
    FUNC8(hr == S_OK || FUNC7(hr == REGDB_E_CLASSNOTREG), "CoCreateInstance failed: %08x\n", hr);
    if (!timeline)
        return;

    hr = FUNC5(timeline, &obj, TIMELINE_MAJOR_TYPE_GROUP);
    FUNC8(hr == S_OK, "CreateEmptyNode failed: %08x\n", hr);
    if(hr == S_OK)
    {
        IAMTimelineGroup *group;
        IAMTimelineObj *obj2;

        hr = FUNC3(obj, &IID_IAMTimelineGroup, (void **)&group);
        FUNC8(hr == S_OK, "got %08x\n", hr);

        hr = FUNC1(group, &IID_IAMTimelineObj, (void **)&obj2);
        FUNC8(hr == S_OK, "got %08x\n", hr);
        FUNC8(obj == obj2, "Different pointers\n");
        FUNC4(obj2);

        FUNC2(group);

        FUNC4(obj);
    }

    FUNC6(timeline);
}