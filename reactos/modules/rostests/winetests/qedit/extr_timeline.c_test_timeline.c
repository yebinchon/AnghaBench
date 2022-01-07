
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIMELINE_MAJOR_TYPE ;
typedef int IAMTimelineObj ;
typedef int IAMTimeline ;
typedef int * HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_AMTimeline ;
 int * CoCreateInstance (int *,int *,int ,int *,void**) ;
 int * E_INVALIDARG ;
 int * E_NOINTERFACE ;
 int * E_POINTER ;
 int * IAMTimelineObj_GetTimelineNoRef (int *,int **) ;
 int * IAMTimelineObj_GetTimelineType (int *,int*) ;
 int * IAMTimelineObj_QueryInterface (int *,int *,void**) ;
 int IAMTimelineObj_Release (int *) ;
 int * IAMTimelineObj_SetTimelineType (int *,int) ;
 int * IAMTimeline_CreateEmptyNode (int *,int **,int) ;
 int * IAMTimeline_QueryInterface (int *,int *,void**) ;
 int IAMTimeline_Release (int *) ;
 int IID_IAMTimeline ;
 int IID_IAMTimelineObj ;
 int * REGDB_E_CLASSNOTREG ;
 int * S_OK ;






 scalar_t__ broken (int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_timeline(void)
{
    HRESULT hr;
    IAMTimeline *timeline = ((void*)0);
    IAMTimeline *timeline2 = (IAMTimeline *)0xdeadbeef;
    IAMTimelineObj *obj = (IAMTimelineObj *)0xdeadbeef;
    IAMTimelineObj obj_iface;
    TIMELINE_MAJOR_TYPE type;

    hr = CoCreateInstance(&CLSID_AMTimeline, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IAMTimeline, (void **)&timeline);
    ok(hr == S_OK || broken(hr == REGDB_E_CLASSNOTREG), "CoCreateInstance failed: %08x\n", hr);
    if (!timeline) return;

    hr = IAMTimeline_QueryInterface(timeline, &IID_IAMTimelineObj, ((void*)0));
    ok(hr == E_POINTER, "Expected E_POINTER got %08x\n", hr);

    hr = IAMTimeline_QueryInterface(timeline, &IID_IAMTimelineObj, (void **)&obj);
    ok(hr == E_NOINTERFACE, "Expected E_NOINTERFACE got %08x\n", hr);
    ok(!obj, "Expected NULL got %p\n", obj);

    hr = IAMTimeline_CreateEmptyNode(timeline, ((void*)0), 0);
    ok(hr == E_POINTER, "Expected E_POINTER got %08x\n", hr);

    hr = IAMTimeline_CreateEmptyNode(timeline, ((void*)0), 133);
    ok(hr == E_POINTER, "Expected E_POINTER got %08x\n", hr);

    for (type = 0; type < 256; type++)
    {
        obj = &obj_iface;
        hr = IAMTimeline_CreateEmptyNode(timeline, &obj, type);
        switch (type)
        {
            case 133:
            case 129:
            case 130:
            case 128:
            case 132:
            case 131:
                ok(hr == S_OK, "CreateEmptyNode failed: %08x\n", hr);
                if (obj != &obj_iface) IAMTimelineObj_Release(obj);
                break;
            default:
                ok(hr == E_INVALIDARG, "Expected E_INVALIDARG got %08x\n", hr);
                ok(obj == &obj_iface, "Expected %p got %p\n", &obj_iface, obj);
        }
    }

    obj = ((void*)0);
    hr = IAMTimeline_CreateEmptyNode(timeline, &obj, 133);
    ok(hr == S_OK, "CreateEmptyNode failed: %08x\n", hr);
    if (!obj) return;

    hr = IAMTimelineObj_QueryInterface(obj, &IID_IAMTimeline, ((void*)0));
    ok(hr == E_POINTER, "Expected E_POINTER got %08x\n", hr);

    hr = IAMTimelineObj_QueryInterface(obj, &IID_IAMTimeline, (void **)&timeline2);
    ok(hr == E_NOINTERFACE, "Expected E_NOINTERFACE got %08x\n", hr);
    ok(!timeline2, "Expected NULL got %p\n", timeline2);

    hr = IAMTimelineObj_GetTimelineType(obj, ((void*)0));
    ok(hr == E_POINTER, "Expected E_POINTER got %08x\n", hr);

    hr = IAMTimelineObj_GetTimelineType(obj, &type);
    ok(hr == S_OK, "GetTimelineType failed: %08x\n", hr);
    ok(type == 133, "Expected TIMELINE_MAJOR_TYPE_COMPOSITE got %d\n", type);

    for (type = 0; type < 256; type++)
    {
        hr = IAMTimelineObj_SetTimelineType(obj, type);
        if (type == 133)
            ok(hr == S_OK, "SetTimelineType failed: %08x\n", hr);
        else
            ok(hr == E_INVALIDARG, "Expected E_INVALIDARG got %08x\n", hr);
    }

    hr = IAMTimelineObj_GetTimelineNoRef(obj, ((void*)0));
    ok(hr == E_POINTER, "Expected E_POINTER got %08x\n", hr);

    timeline2 = (IAMTimeline *)0xdeadbeef;
    hr = IAMTimelineObj_GetTimelineNoRef(obj, &timeline2);
    ok(hr == E_NOINTERFACE, "Expected E_NOINTERFACE got %08x\n", hr);
    ok(!timeline2, "Expected NULL got %p\n", timeline2);

    IAMTimelineObj_Release(obj);
    IAMTimeline_Release(timeline);
}
