
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_dvc1; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int p_vc1; } ;
typedef TYPE_3__ MP4_Box_t ;


 int free (int ) ;

__attribute__((used)) static void MP4_FreeBox_dvc1( MP4_Box_t *p_box )
{
    free( p_box->data.p_dvc1->p_vc1 );
}
