
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_sample_vide; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int p_qt_image_description; } ;
typedef TYPE_3__ MP4_Box_t ;


 int free (int ) ;

__attribute__((used)) static void MP4_FreeBox_sample_vide( MP4_Box_t *p_box )
{
    free( p_box->data.p_sample_vide->p_qt_image_description );
}
