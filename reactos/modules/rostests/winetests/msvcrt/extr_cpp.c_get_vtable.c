
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vtable_ptr ;



__attribute__((used)) static inline vtable_ptr *get_vtable( void *obj )
{
    return *(vtable_ptr **)obj;
}
