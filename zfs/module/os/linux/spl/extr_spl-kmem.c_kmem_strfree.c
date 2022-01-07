
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (char*) ;

void
kmem_strfree(char *str)
{
 kfree(str);
}
