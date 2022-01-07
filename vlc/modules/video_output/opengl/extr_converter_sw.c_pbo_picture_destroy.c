
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_planes; TYPE_2__* p_sys; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_6__ {int buffers; int (* DeleteBuffers ) (int ,int ) ;} ;
typedef TYPE_2__ picture_sys_t ;


 int free (TYPE_2__*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
pbo_picture_destroy(picture_t *pic)
{
    picture_sys_t *picsys = pic->p_sys;

    picsys->DeleteBuffers(pic->i_planes, picsys->buffers);

    free(picsys);
}
