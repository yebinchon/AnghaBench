
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_tfra; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_6__ {int p_sample_number; int p_trun_number; int p_traf_number; int p_moof_offset; int p_time; } ;
typedef TYPE_3__ MP4_Box_t ;


 int free (int ) ;

__attribute__((used)) static void MP4_FreeBox_tfra( MP4_Box_t *p_box )
{
    free( p_box->data.p_tfra->p_time );
    free( p_box->data.p_tfra->p_moof_offset );
    free( p_box->data.p_tfra->p_traf_number );
    free( p_box->data.p_tfra->p_trun_number );
    free( p_box->data.p_tfra->p_sample_number );
}
