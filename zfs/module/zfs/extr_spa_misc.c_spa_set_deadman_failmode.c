
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* spa_deadman_failmode; } ;
typedef TYPE_1__ spa_t ;


 void* ZIO_FAILURE_MODE_CONTINUE ;
 void* ZIO_FAILURE_MODE_PANIC ;
 void* ZIO_FAILURE_MODE_WAIT ;
 scalar_t__ strcmp (char const*,char*) ;

void
spa_set_deadman_failmode(spa_t *spa, const char *failmode)
{
 if (strcmp(failmode, "wait") == 0)
  spa->spa_deadman_failmode = ZIO_FAILURE_MODE_WAIT;
 else if (strcmp(failmode, "continue") == 0)
  spa->spa_deadman_failmode = ZIO_FAILURE_MODE_CONTINUE;
 else if (strcmp(failmode, "panic") == 0)
  spa->spa_deadman_failmode = ZIO_FAILURE_MODE_PANIC;
 else
  spa->spa_deadman_failmode = ZIO_FAILURE_MODE_WAIT;
}
