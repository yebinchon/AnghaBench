
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int is_declptr (int ) ;
 scalar_t__ is_ptr (int const*) ;
 int type_pointer_get_ref (int const*) ;

__attribute__((used)) static inline int last_ptr(const type_t *type)
{
    return is_ptr(type) && !is_declptr(type_pointer_get_ref(type));
}
