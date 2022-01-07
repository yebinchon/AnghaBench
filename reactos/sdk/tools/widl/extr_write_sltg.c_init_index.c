
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sltg_data {int dummy; } ;


 int add_index (struct sltg_data*,char const*) ;
 int init_sltg_data (struct sltg_data*) ;

__attribute__((used)) static void init_index(struct sltg_data *index)
{
    static const char compobj[] = { 1,'C','o','m','p','O','b','j',0 };

    init_sltg_data(index);

    add_index(index, compobj);
}
