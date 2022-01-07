
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {int count; struct array* ptr; } ;
typedef struct array WCHAR ;
typedef int UINT ;
typedef scalar_t__ CIMTYPE ;


 scalar_t__ CIM_DATETIME ;
 scalar_t__ CIM_STRING ;
 int get_type_size (scalar_t__) ;
 int heap_free (struct array*) ;

void destroy_array( struct array *array, CIMTYPE type )
{
    UINT i, size;

    if (!array) return;
    if (type == CIM_STRING || type == CIM_DATETIME)
    {
        size = get_type_size( type );
        for (i = 0; i < array->count; i++) heap_free( *(WCHAR **)((char *)array->ptr + i * size) );
    }
    heap_free( array->ptr );
    heap_free( array );
}
