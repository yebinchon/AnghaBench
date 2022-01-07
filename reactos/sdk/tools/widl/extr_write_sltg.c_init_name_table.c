
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sltg_typelib {int name_table; } ;


 int init_sltg_data (int *) ;

__attribute__((used)) static void init_name_table(struct sltg_typelib *sltg)
{
    init_sltg_data(&sltg->name_table);
}
