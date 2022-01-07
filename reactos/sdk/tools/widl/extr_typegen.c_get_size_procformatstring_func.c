
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_t ;
typedef int type_t ;


 int write_procformatstring_func (int *,int ,int const*,int const*,unsigned int*,int ) ;

unsigned int get_size_procformatstring_func(const type_t *iface, const var_t *func)
{
    unsigned int offset = 0;
    write_procformatstring_func( ((void*)0), 0, iface, func, &offset, 0 );
    return offset;
}
