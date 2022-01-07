
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_header_t ;
typedef int ULONG_PTR ;
typedef int HINTERNET ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,int,int *) ;
 int * addref_object (scalar_t__) ;
 int handle_cs ;
 scalar_t__* handles ;
 int max_handles ;

object_header_t *grab_object( HINTERNET hinternet )
{
    object_header_t *hdr = ((void*)0);
    ULONG_PTR handle = (ULONG_PTR)hinternet;

    EnterCriticalSection( &handle_cs );

    if ((handle > 0) && (handle <= max_handles) && handles[handle - 1])
        hdr = addref_object( handles[handle - 1] );

    LeaveCriticalSection( &handle_cs );

    TRACE("handle 0x%lx -> %p\n", handle, hdr);
    return hdr;
}
