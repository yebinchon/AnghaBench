
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_stts; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int pi_sample_delta; int pi_sample_count; } ;
typedef TYPE_3__ MP4_Box_t ;


 int free (int ) ;

__attribute__((used)) static void MP4_FreeBox_stts( MP4_Box_t *p_box )
{
    free( p_box->data.p_stts->pi_sample_count );
    free( p_box->data.p_stts->pi_sample_delta );
}
