
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int track_t ;
struct TYPE_4__ {int (* get_num_tracks ) (int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int CDIO_INVALID_TRACK ;
 int stub1 (int ) ;

track_t
cdio_get_num_tracks (const CdIo_t *p_cdio)
{
  if (p_cdio == ((void*)0)) return CDIO_INVALID_TRACK;

  if (p_cdio->op.get_num_tracks) {
    return p_cdio->op.get_num_tracks (p_cdio->env);
  } else {
    return CDIO_INVALID_TRACK;
  }
}
