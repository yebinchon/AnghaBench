
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_name_t ;


 int kmem_free (int *,int) ;

void
zap_name_free(zap_name_t *zn)
{
 kmem_free(zn, sizeof (zap_name_t));
}
