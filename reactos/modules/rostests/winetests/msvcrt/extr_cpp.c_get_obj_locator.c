
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vtable_ptr ;


 scalar_t__* get_vtable (void*) ;

__attribute__((used)) static inline void *get_obj_locator( void *cppobj )
{
    const vtable_ptr *vtable = get_vtable( cppobj );
    return (void *)vtable[-1];
}
