
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct use_connection_context {TYPE_1__* resource; int * result; int * accessname; } ;
typedef int WCHAR ;
struct TYPE_2__ {int * lpRemoteName; } ;


 int CONNECT_LOCALDRIVE ;
 int lstrcpyW (int *,int *) ;

__attribute__((used)) static void use_connection_set_accessnameW(struct use_connection_context *ctxt, WCHAR *local_name)
{
    WCHAR *accessname = ctxt->accessname;
    if (local_name)
    {
        lstrcpyW(accessname, local_name);
        if (ctxt->result)
            *ctxt->result = CONNECT_LOCALDRIVE;
    }
    else
        lstrcpyW(accessname, ctxt->resource->lpRemoteName);
}
