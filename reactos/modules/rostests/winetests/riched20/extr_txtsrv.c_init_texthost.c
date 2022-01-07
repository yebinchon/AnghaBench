
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_2__ ITextHost_iface; } ;
typedef int IUnknown ;
typedef int ITextServices ;
typedef TYPE_1__ ITextHostTestImpl ;
typedef TYPE_2__ ITextHost ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 TYPE_1__* CoTaskMemAlloc (int) ;
 int CoTaskMemFree (TYPE_1__*) ;
 int FALSE ;
 scalar_t__ IUnknown_QueryInterface (int *,int ,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int itextHostVtbl ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pCreateTextServices (int *,TYPE_2__*,int **) ;
 int pIID_ITextServices ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL init_texthost(ITextServices **txtserv, ITextHost **ret)
{
    ITextHostTestImpl *dummyTextHost;
    IUnknown *init;
    HRESULT result;

    dummyTextHost = CoTaskMemAlloc(sizeof(*dummyTextHost));
    if (dummyTextHost == ((void*)0)) {
        win_skip("Insufficient memory to create ITextHost interface\n");
        return FALSE;
    }
    dummyTextHost->ITextHost_iface.lpVtbl = &itextHostVtbl;
    dummyTextHost->refCount = 1;




    result = pCreateTextServices(((void*)0), &dummyTextHost->ITextHost_iface, &init);
    ok(result == S_OK, "Did not return S_OK when created (result =  %x)\n", result);
    if (result != S_OK) {
        CoTaskMemFree(dummyTextHost);
        win_skip("CreateTextServices failed.\n");
        return FALSE;
    }

    result = IUnknown_QueryInterface(init, pIID_ITextServices, (void**)txtserv);
    ok((result == S_OK) && (*txtserv != ((void*)0)), "Querying interface failed (result = %x, txtserv = %p)\n", result, *txtserv);
    IUnknown_Release(init);
    if (!((result == S_OK) && (*txtserv != ((void*)0)))) {
        CoTaskMemFree(dummyTextHost);
        win_skip("Could not retrieve ITextServices interface\n");
        return FALSE;
    }

    *ret = &dummyTextHost->ITextHost_iface;
    return TRUE;
}
