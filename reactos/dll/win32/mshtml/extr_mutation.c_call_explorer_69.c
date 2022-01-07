
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_3__ {int client; } ;
typedef int IOleCommandTarget ;
typedef TYPE_1__ HTMLDocumentObj ;
typedef int HRESULT ;


 int CGID_Explorer ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int IID_IOleCommandTarget ;
 int IOleClientSite_QueryInterface (int ,int *,void**) ;
 int IOleCommandTarget_Exec (int *,int *,int,int ,int *,int *) ;
 int IOleCommandTarget_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ VT_NULL ;
 scalar_t__ V_VT (int *) ;
 int VariantInit (int *) ;

__attribute__((used)) static void call_explorer_69(HTMLDocumentObj *doc)
{
    IOleCommandTarget *olecmd;
    VARIANT var;
    HRESULT hres;

    if(!doc->client)
        return;

    hres = IOleClientSite_QueryInterface(doc->client, &IID_IOleCommandTarget, (void**)&olecmd);
    if(FAILED(hres))
        return;

    VariantInit(&var);
    hres = IOleCommandTarget_Exec(olecmd, &CGID_Explorer, 69, 0, ((void*)0), &var);
    IOleCommandTarget_Release(olecmd);
    if(SUCCEEDED(hres) && V_VT(&var) != VT_NULL)
        FIXME("handle result\n");
}
