
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 int umem_free (void*,size_t) ;

void
ztest_lr_free(void *lr, size_t lrsize, char *name)
{
 size_t namesize = name ? strlen(name) + 1 : 0;

 umem_free(lr, lrsize + namesize);
}
