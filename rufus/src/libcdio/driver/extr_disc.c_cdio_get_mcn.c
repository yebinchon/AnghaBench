
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* (* get_mcn ) (int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 char* stub1 (int ) ;

char *
cdio_get_mcn (const CdIo_t *p_cdio)
{
  if (p_cdio && p_cdio->op.get_mcn) {
    return p_cdio->op.get_mcn (p_cdio->env);
  } else {
    return ((void*)0);
  }
}
