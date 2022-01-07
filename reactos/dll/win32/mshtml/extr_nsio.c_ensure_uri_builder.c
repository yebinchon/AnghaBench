
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int uri_builder; int uri; int is_mutable; } ;
typedef TYPE_1__ nsWineURI ;
typedef int HRESULT ;
typedef int BOOL ;


 int CreateIUriBuilder (int ,int ,int ,int *) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int TRUE ;
 int WARN (char*,...) ;
 int ensure_uri (TYPE_1__*) ;
 int invalidate_uri (TYPE_1__*) ;

__attribute__((used)) static BOOL ensure_uri_builder(nsWineURI *This)
{
    if(!This->is_mutable) {
        WARN("Not mutable URI\n");
        return FALSE;
    }

    if(!This->uri_builder) {
        HRESULT hres;

        if(!ensure_uri(This))
            return FALSE;

        hres = CreateIUriBuilder(This->uri, 0, 0, &This->uri_builder);
        if(FAILED(hres)) {
            WARN("CreateIUriBuilder failed: %08x\n", hres);
            return FALSE;
        }
    }

    invalidate_uri(This);
    return TRUE;
}
