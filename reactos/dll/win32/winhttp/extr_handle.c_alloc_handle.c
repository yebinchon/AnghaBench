
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * handle; int children; } ;
typedef TYPE_1__ object_header_t ;
typedef int ULONG_PTR ;
typedef int * HINTERNET ;


 int ERR (char*) ;
 int EnterCriticalSection (int *) ;
 int HANDLE_CHUNK_SIZE ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__* addref_object (TYPE_1__*) ;
 int handle_cs ;
 TYPE_1__** handles ;
 TYPE_1__** heap_alloc_zero (int) ;
 TYPE_1__** heap_realloc_zero (TYPE_1__**,int) ;
 int list_init (int *) ;
 int max_handles ;
 int next_handle ;

HINTERNET alloc_handle( object_header_t *hdr )
{
    object_header_t **p;
    ULONG_PTR handle, num;

    list_init( &hdr->children );
    hdr->handle = ((void*)0);

    EnterCriticalSection( &handle_cs );
    if (!max_handles)
    {
        num = HANDLE_CHUNK_SIZE;
        if (!(p = heap_alloc_zero( sizeof(ULONG_PTR) * num ))) goto end;
        handles = p;
        max_handles = num;
    }
    if (max_handles == next_handle)
    {
        num = max_handles * 2;
        if (!(p = heap_realloc_zero( handles, sizeof(ULONG_PTR) * num ))) goto end;
        handles = p;
        max_handles = num;
    }
    handle = next_handle;
    if (handles[handle]) ERR("handle isn't free but should be\n");

    handles[handle] = addref_object( hdr );
    hdr->handle = (HINTERNET)(handle + 1);
    while ((next_handle < max_handles) && handles[next_handle]) next_handle++;

end:
    LeaveCriticalSection( &handle_cs );
    return hdr->handle;
}
