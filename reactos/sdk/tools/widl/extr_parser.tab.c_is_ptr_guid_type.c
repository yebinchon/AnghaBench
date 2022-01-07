
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int FALSE ;
 int is_ptr (int const*) ;
 int type_memsize (int ) ;
 int type_pointer_get_ref (int const*) ;

__attribute__((used)) static int is_ptr_guid_type(const type_t *type)
{

    if (!is_ptr(type)) return FALSE;



    return (type_memsize(type_pointer_get_ref(type)) == 16);
}
