
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ htype; int dwInternalFlags; scalar_t__ hInternet; TYPE_1__* vtbl; int entry; int dwContext; int refs; } ;
typedef TYPE_2__ object_header_t ;
typedef int ULONG ;
typedef size_t UINT_PTR ;
struct TYPE_10__ {int (* Destroy ) (TYPE_2__*) ;int (* CloseConnection ) (TYPE_2__*) ;} ;
typedef int HINTERNET ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int INET_OPENURL ;
 int INTERNET_STATUS_HANDLE_CLOSING ;
 int INTERNET_SendCallback (TYPE_2__*,int ,int ,scalar_t__*,int) ;
 int InterlockedDecrement (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,TYPE_2__*,...) ;
 int TRUE ;
 scalar_t__ WH_HFTPSESSION ;
 scalar_t__ WH_HHTTPSESSION ;
 scalar_t__ WH_HINIT ;
 int WININET_cs ;
 int ** handle_table ;
 int heap_free (TYPE_2__*) ;
 int invalidate_handle (TYPE_2__*) ;
 int list_remove (int *) ;
 size_t next_handle ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

BOOL WININET_Release( object_header_t *info )
{
    ULONG refs = InterlockedDecrement(&info->refs);
    TRACE( "object %p refcount = %d\n", info, refs );
    if( !refs )
    {
        invalidate_handle(info);
        if ( info->vtbl->CloseConnection )
        {
            TRACE( "closing connection %p\n", info);
            info->vtbl->CloseConnection( info );
        }

        if ((info->htype != WH_HHTTPSESSION && info->htype != WH_HFTPSESSION)
            || !(info->dwInternalFlags & INET_OPENURL))
        {
            INTERNET_SendCallback(info, info->dwContext,
                                  INTERNET_STATUS_HANDLE_CLOSING, &info->hInternet,
                                  sizeof(HINTERNET));
        }
        TRACE( "destroying object %p\n", info);
        if ( info->htype != WH_HINIT )
            list_remove( &info->entry );
        info->vtbl->Destroy( info );

        if(info->hInternet) {
            UINT_PTR handle = (UINT_PTR)info->hInternet;

            EnterCriticalSection( &WININET_cs );

            handle_table[handle] = ((void*)0);
            if(next_handle > handle)
                next_handle = handle;

            LeaveCriticalSection( &WININET_cs );
        }

        heap_free(info);
    }
    return TRUE;
}
