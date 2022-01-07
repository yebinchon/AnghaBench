
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int track_t ;
typedef int track_format_t ;
struct TYPE_4__ {int (* get_track_format ) (int ,int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int TRACK_FORMAT_ERROR ;
 int stub1 (int ,int ) ;

track_format_t
cdio_get_track_format(const CdIo_t *p_cdio, track_t u_track)
{
  if (!p_cdio) return TRACK_FORMAT_ERROR;

  if (p_cdio->op.get_track_format) {
    return p_cdio->op.get_track_format (p_cdio->env, u_track);
  } else {
    return TRACK_FORMAT_ERROR;
  }
}
