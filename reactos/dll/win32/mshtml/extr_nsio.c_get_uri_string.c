
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
struct TYPE_4__ {int uri; } ;
typedef TYPE_1__ nsWineURI ;
typedef int nsACString ;
typedef int Uri_PROPERTY ;
typedef int HRESULT ;
typedef int BSTR ;


 scalar_t__ FAILED (int ) ;
 int IUri_GetPropertyBSTR (int ,int ,int *,int ) ;
 int NS_ERROR_OUT_OF_MEMORY ;
 int NS_ERROR_UNEXPECTED ;
 int NS_OK ;
 int SysFreeString (int ) ;
 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 int debugstr_a (char*) ;
 int ensure_uri (TYPE_1__*) ;
 int heap_free (char*) ;
 char* heap_strdupWtoU (int ) ;
 int nsACString_SetData (int *,char*) ;

__attribute__((used)) static nsresult get_uri_string(nsWineURI *This, Uri_PROPERTY prop, nsACString *ret)
{
    char *vala;
    BSTR val;
    HRESULT hres;

    if(!ensure_uri(This))
        return NS_ERROR_UNEXPECTED;

    hres = IUri_GetPropertyBSTR(This->uri, prop, &val, 0);
    if(FAILED(hres)) {
        WARN("GetPropertyBSTR failed: %08x\n", hres);
        return NS_ERROR_UNEXPECTED;
    }

    vala = heap_strdupWtoU(val);
    SysFreeString(val);
    if(!vala)
        return NS_ERROR_OUT_OF_MEMORY;

    TRACE("ret %s\n", debugstr_a(vala));
    nsACString_SetData(ret, vala);
    heap_free(vala);
    return NS_OK;
}
