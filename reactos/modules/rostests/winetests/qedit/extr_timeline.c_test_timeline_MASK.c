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
typedef  int TIMELINE_MAJOR_TYPE ;
typedef  int /*<<< orphan*/  IAMTimelineObj ;
typedef  int /*<<< orphan*/  IAMTimeline ;
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_AMTimeline ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/ * E_NOINTERFACE ; 
 int /*<<< orphan*/ * E_POINTER ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAMTimeline ; 
 int /*<<< orphan*/  IID_IAMTimelineObj ; 
 int /*<<< orphan*/ * REGDB_E_CLASSNOTREG ; 
 int /*<<< orphan*/ * S_OK ; 
#define  TIMELINE_MAJOR_TYPE_COMPOSITE 133 
#define  TIMELINE_MAJOR_TYPE_EFFECT 132 
#define  TIMELINE_MAJOR_TYPE_GROUP 131 
#define  TIMELINE_MAJOR_TYPE_SOURCE 130 
#define  TIMELINE_MAJOR_TYPE_TRACK 129 
#define  TIMELINE_MAJOR_TYPE_TRANSITION 128 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    HRESULT hr;
    IAMTimeline *timeline = NULL;
    IAMTimeline *timeline2 = (IAMTimeline *)0xdeadbeef;
    IAMTimelineObj *obj = (IAMTimelineObj *)0xdeadbeef;
    IAMTimelineObj obj_iface;
    TIMELINE_MAJOR_TYPE type;

    hr = FUNC0(&CLSID_AMTimeline, NULL, CLSCTX_INPROC_SERVER, &IID_IAMTimeline, (void **)&timeline);
    FUNC10(hr == S_OK || FUNC9(hr == REGDB_E_CLASSNOTREG), "CoCreateInstance failed: %08x\n", *hr);
    if (!timeline) return;

    hr = FUNC7(timeline, &IID_IAMTimelineObj, NULL);
    FUNC10(hr == E_POINTER, "Expected E_POINTER got %08x\n", *hr);

    hr = FUNC7(timeline, &IID_IAMTimelineObj, (void **)&obj);
    FUNC10(hr == E_NOINTERFACE, "Expected E_NOINTERFACE got %08x\n", *hr);
    FUNC10(!obj, "Expected NULL got %p\n", *obj);

    hr = FUNC6(timeline, NULL, 0);
    FUNC10(hr == E_POINTER, "Expected E_POINTER got %08x\n", *hr);

    hr = FUNC6(timeline, NULL, TIMELINE_MAJOR_TYPE_COMPOSITE);
    FUNC10(hr == E_POINTER, "Expected E_POINTER got %08x\n", *hr);

    for (type = 0; type < 256; type++)
    {
        obj = &obj_iface;
        hr = FUNC6(timeline, &obj, type);
        switch (type)
        {
            case TIMELINE_MAJOR_TYPE_COMPOSITE:
            case TIMELINE_MAJOR_TYPE_TRACK:
            case TIMELINE_MAJOR_TYPE_SOURCE:
            case TIMELINE_MAJOR_TYPE_TRANSITION:
            case TIMELINE_MAJOR_TYPE_EFFECT:
            case TIMELINE_MAJOR_TYPE_GROUP:
                FUNC10(hr == S_OK, "CreateEmptyNode failed: %08x\n", *hr);
                if (obj != &obj_iface) FUNC4(obj);
                break;
            default:
                FUNC10(hr == E_INVALIDARG, "Expected E_INVALIDARG got %08x\n", *hr);
                FUNC10(obj == &obj_iface, "Expected %p got %p\n", obj_iface, obj);
        }
    }

    obj = NULL;
    hr = FUNC6(timeline, &obj, TIMELINE_MAJOR_TYPE_COMPOSITE);
    FUNC10(hr == S_OK, "CreateEmptyNode failed: %08x\n", *hr);
    if (!obj) return;

    hr = FUNC3(obj, &IID_IAMTimeline, NULL);
    FUNC10(hr == E_POINTER, "Expected E_POINTER got %08x\n", *hr);

    hr = FUNC3(obj, &IID_IAMTimeline, (void **)&timeline2);
    FUNC10(hr == E_NOINTERFACE, "Expected E_NOINTERFACE got %08x\n", *hr);
    FUNC10(!timeline2, "Expected NULL got %p\n", *timeline2);

    hr = FUNC2(obj, NULL);
    FUNC10(hr == E_POINTER, "Expected E_POINTER got %08x\n", *hr);

    hr = FUNC2(obj, &type);
    FUNC10(hr == S_OK, "GetTimelineType failed: %08x\n", *hr);
    FUNC10(type == TIMELINE_MAJOR_TYPE_COMPOSITE, "Expected TIMELINE_MAJOR_TYPE_COMPOSITE got %d\n", type);

    for (type = 0; type < 256; type++)
    {
        hr = FUNC5(obj, type);
        if (type == TIMELINE_MAJOR_TYPE_COMPOSITE)
            FUNC10(hr == S_OK, "SetTimelineType failed: %08x\n", *hr);
        else
            FUNC10(hr == E_INVALIDARG, "Expected E_INVALIDARG got %08x\n", *hr);
    }

    hr = FUNC1(obj, NULL);
    FUNC10(hr == E_POINTER, "Expected E_POINTER got %08x\n", *hr);

    timeline2 = (IAMTimeline *)0xdeadbeef;
    hr = FUNC1(obj, &timeline2);
    FUNC10(hr == E_NOINTERFACE, "Expected E_NOINTERFACE got %08x\n", *hr);
    FUNC10(!timeline2, "Expected NULL got %p\n", *timeline2);

    FUNC4(obj);
    FUNC8(timeline);
}