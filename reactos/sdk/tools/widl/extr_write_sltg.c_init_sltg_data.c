
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sltg_data {int allocated; int data; scalar_t__ size; } ;


 int xmalloc (int) ;

__attribute__((used)) static void init_sltg_data(struct sltg_data *data)
{
    data->size = 0;
    data->allocated = 0x10;
    data->data = xmalloc(0x10);
}
