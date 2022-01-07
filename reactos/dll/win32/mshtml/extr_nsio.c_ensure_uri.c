
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ uri; scalar_t__ uri_builder; } ;
typedef TYPE_1__ nsWineURI ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IUriBuilder_CreateUriSimple (scalar_t__,int ,int ,scalar_t__*) ;
 int TRUE ;
 int WARN (char*,int ) ;
 int assert (int) ;

__attribute__((used)) static BOOL ensure_uri(nsWineURI *This)
{
    HRESULT hres;

    assert(This->uri || This->uri_builder);

    if(!This->uri) {
        hres = IUriBuilder_CreateUriSimple(This->uri_builder, 0, 0, &This->uri);
        if(FAILED(hres)) {
            WARN("CreateUriSimple failed: %08x\n", hres);
            return FALSE;
        }
    }

    return TRUE;
}
