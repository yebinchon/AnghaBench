
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_sdict ;


 int stb_sdict_destroy (int *) ;

void stb_sdict_delete(stb_sdict *d)
{
   stb_sdict_destroy(d);
}
