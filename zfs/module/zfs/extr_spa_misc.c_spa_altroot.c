
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * spa_root; } ;
typedef TYPE_1__ spa_t ;


 int strncpy (char*,int *,size_t) ;

void
spa_altroot(spa_t *spa, char *buf, size_t buflen)
{
 if (spa->spa_root == ((void*)0))
  buf[0] = '\0';
 else
  (void) strncpy(buf, spa->spa_root, buflen);
}
