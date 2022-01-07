
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int * spa_tryimport (int *) ;

__attribute__((used)) static nvlist_t *
refresh_config(void *unused, nvlist_t *tryconfig)
{
 return (spa_tryimport(tryconfig));
}
