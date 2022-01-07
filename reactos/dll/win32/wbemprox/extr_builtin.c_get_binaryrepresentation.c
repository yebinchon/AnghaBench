
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {int count; int * ptr; } ;
typedef int UINT8 ;
typedef int UINT ;
typedef int PSID ;


 void* heap_alloc (int) ;
 int heap_free (struct array*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static struct array *get_binaryrepresentation( PSID sid, UINT len )
{
    struct array *array = heap_alloc( sizeof(struct array) );
    if (array)
    {
        UINT8 *ret = heap_alloc( len );
        if (ret)
        {
            memcpy( ret, sid, len );
            array->count = len;
            array->ptr = ret;
            return array;
        }
        heap_free( array );
    }
    return ((void*)0);
}
