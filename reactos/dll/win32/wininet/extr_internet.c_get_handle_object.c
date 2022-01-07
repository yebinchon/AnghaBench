
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int object_header_t ;
typedef size_t UINT_PTR ;
struct TYPE_3__ {scalar_t__ valid_handle; } ;
typedef int HINTERNET ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,size_t,int *) ;
 int * WININET_AddRef (TYPE_1__*) ;
 int WININET_cs ;
 TYPE_1__** handle_table ;
 size_t handle_table_size ;

object_header_t *get_handle_object( HINTERNET hinternet )
{
    object_header_t *info = ((void*)0);
    UINT_PTR handle = (UINT_PTR) hinternet;

    EnterCriticalSection( &WININET_cs );

    if(handle > 0 && handle < handle_table_size && handle_table[handle] && handle_table[handle]->valid_handle)
        info = WININET_AddRef(handle_table[handle]);

    LeaveCriticalSection( &WININET_cs );

    TRACE("handle %ld -> %p\n", handle, info);

    return info;
}
