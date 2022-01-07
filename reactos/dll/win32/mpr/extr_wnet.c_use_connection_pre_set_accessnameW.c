
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct use_connection_context {scalar_t__* buffer_size; int * accessname; TYPE_1__* resource; } ;
typedef int WCHAR ;
struct TYPE_2__ {int * lpRemoteName; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ lstrlenW (int *) ;

__attribute__((used)) static DWORD use_connection_pre_set_accessnameW(struct use_connection_context *ctxt, WCHAR *local_name)
{
    if (ctxt->accessname && ctxt->buffer_size && *ctxt->buffer_size)
    {
        DWORD len;

        if (local_name)
            len = lstrlenW(local_name);
        else
            len = lstrlenW(ctxt->resource->lpRemoteName);

        if (++len > *ctxt->buffer_size)
        {
            *ctxt->buffer_size = len;
            return ERROR_MORE_DATA;
        }
    }
    else
        ctxt->accessname = ((void*)0);

    return ERROR_SUCCESS;
}
