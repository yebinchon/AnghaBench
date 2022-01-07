
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int request_t ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__* vtbl; int entry; int handle; int refs; } ;
typedef TYPE_2__ object_header_t ;
typedef int ULONG ;
struct TYPE_7__ {int (* destroy ) (TYPE_2__*) ;} ;
typedef int HINTERNET ;


 int InterlockedDecrement (int *) ;
 int TRACE (char*,TYPE_2__*,...) ;
 int WINHTTP_CALLBACK_STATUS_HANDLE_CLOSING ;
 scalar_t__ WINHTTP_HANDLE_TYPE_REQUEST ;
 scalar_t__ WINHTTP_HANDLE_TYPE_SESSION ;
 int close_connection (int *) ;
 int list_remove (int *) ;
 int send_callback (TYPE_2__*,int ,int *,int) ;
 int stub1 (TYPE_2__*) ;

void release_object( object_header_t *hdr )
{
    ULONG refs = InterlockedDecrement( &hdr->refs );
    TRACE("object %p refcount = %d\n", hdr, refs);
    if (!refs)
    {
        if (hdr->type == WINHTTP_HANDLE_TYPE_REQUEST) close_connection( (request_t *)hdr );

        send_callback( hdr, WINHTTP_CALLBACK_STATUS_HANDLE_CLOSING, &hdr->handle, sizeof(HINTERNET) );

        TRACE("destroying object %p\n", hdr);
        if (hdr->type != WINHTTP_HANDLE_TYPE_SESSION) list_remove( &hdr->entry );
        hdr->vtbl->destroy( hdr );
    }
}
