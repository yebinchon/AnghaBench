
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_elst; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int i_media_rate_fraction; int i_media_rate_integer; int i_media_time; int i_segment_duration; } ;
typedef TYPE_3__ MP4_Box_t ;


 int free (int ) ;

__attribute__((used)) static void MP4_FreeBox_elst( MP4_Box_t *p_box )
{
    free( p_box->data.p_elst->i_segment_duration );
    free( p_box->data.p_elst->i_media_time );
    free( p_box->data.p_elst->i_media_rate_integer );
    free( p_box->data.p_elst->i_media_rate_fraction );
}
