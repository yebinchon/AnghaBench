
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IAMTimelineObj ;
typedef int IAMTimelineGroup ;
typedef int IAMTimeline ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_AMTimeline ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ IAMTimelineGroup_QueryInterface (int *,int *,void**) ;
 int IAMTimelineGroup_Release (int *) ;
 scalar_t__ IAMTimelineObj_QueryInterface (int *,int *,void**) ;
 int IAMTimelineObj_Release (int *) ;
 scalar_t__ IAMTimeline_CreateEmptyNode (int *,int **,int ) ;
 int IAMTimeline_Release (int *) ;
 int IID_IAMTimeline ;
 int IID_IAMTimelineGroup ;
 int IID_IAMTimelineObj ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 int TIMELINE_MAJOR_TYPE_GROUP ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_timelineobj_interfaces(void)
{
    HRESULT hr;
    IAMTimeline *timeline = ((void*)0);
    IAMTimelineObj *obj;

    hr = CoCreateInstance(&CLSID_AMTimeline, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IAMTimeline, (void **)&timeline);
    ok(hr == S_OK || broken(hr == REGDB_E_CLASSNOTREG), "CoCreateInstance failed: %08x\n", hr);
    if (!timeline)
        return;

    hr = IAMTimeline_CreateEmptyNode(timeline, &obj, TIMELINE_MAJOR_TYPE_GROUP);
    ok(hr == S_OK, "CreateEmptyNode failed: %08x\n", hr);
    if(hr == S_OK)
    {
        IAMTimelineGroup *group;
        IAMTimelineObj *obj2;

        hr = IAMTimelineObj_QueryInterface(obj, &IID_IAMTimelineGroup, (void **)&group);
        ok(hr == S_OK, "got %08x\n", hr);

        hr = IAMTimelineGroup_QueryInterface(group, &IID_IAMTimelineObj, (void **)&obj2);
        ok(hr == S_OK, "got %08x\n", hr);
        ok(obj == obj2, "Different pointers\n");
        IAMTimelineObj_Release(obj2);

        IAMTimelineGroup_Release(group);

        IAMTimelineObj_Release(obj);
    }

    IAMTimeline_Release(timeline);
}
