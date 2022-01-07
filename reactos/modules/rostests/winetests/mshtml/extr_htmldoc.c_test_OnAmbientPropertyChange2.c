
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOleControl ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 int DISPID_AMBIENT_PALETTE ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IOleControl ;
 scalar_t__ IOleControl_OnAmbientPropertyChange (int *,int ) ;
 int IOleControl_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_OnAmbientPropertyChange2(IHTMLDocument2 *doc)
{
    IOleControl *control = ((void*)0);
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IOleControl, (void**)&control);
    ok(hres == S_OK, "QueryInterface(IID_IOleControl failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IOleControl_OnAmbientPropertyChange(control, DISPID_AMBIENT_PALETTE);
    ok(hres == S_OK, "OnAmbientPropertyChange failed: %08x\n", hres);

    IOleControl_Release(control);
}
