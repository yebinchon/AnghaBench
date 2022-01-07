
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 int FALSE ;
 scalar_t__ IOleDocumentView_Show (int ,int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int view ;

__attribute__((used)) static void test_Hide(void)
{
    HRESULT hres;

    if(!view)
        return;

    hres = IOleDocumentView_Show(view, FALSE);
    ok(hres == S_OK, "Show failed: %08x\n", hres);
}
