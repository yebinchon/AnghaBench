
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int p_av1C; } ;
struct TYPE_5__ {TYPE_3__* p_av1C; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ MP4_Box_t ;
typedef TYPE_3__ MP4_Box_data_av1C_t ;


 int free (int ) ;

__attribute__((used)) static void MP4_FreeBox_av1C( MP4_Box_t *p_box )
{
    MP4_Box_data_av1C_t *p_av1C = p_box->data.p_av1C;
    free( p_av1C->p_av1C );
}
