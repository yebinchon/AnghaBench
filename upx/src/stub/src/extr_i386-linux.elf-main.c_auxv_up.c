
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int a_val; } ;
struct TYPE_8__ {TYPE_1__ a_un; } ;
typedef TYPE_2__ Elf32_auxv_t ;


 int DPRINTF (char*,TYPE_2__*,unsigned int const,unsigned int const) ;
 TYPE_2__* auxv_find (TYPE_2__*,unsigned int const) ;

__attribute__((used)) static void



auxv_up(Elf32_auxv_t *av, unsigned const type, unsigned const value)
{
    DPRINTF("auxv_up  %%p %%x %%x\\n",av,type,value);
    av = auxv_find(av, type);
    if (av) {
        av->a_un.a_val = value;
    }
}
