
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int track_t ;
struct TYPE_4__ {int (* get_track_green ) (int ,int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int stub1 (int ,int ) ;

bool
cdio_get_track_green(const CdIo_t *p_cdio, track_t u_track)
{
  if (p_cdio == ((void*)0)) {
    return 0;
  }

  if (p_cdio->op.get_track_green) {
    return p_cdio->op.get_track_green (p_cdio->env, u_track);
  } else {
    return 0;
  }
}
