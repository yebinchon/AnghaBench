
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_5__ {int size; int base; int fd; } ;
typedef TYPE_2__ picture_buffer_t ;


 int picture_Deallocate (int ,int ,int ) ;

__attribute__((used)) static void picture_DestroyFromFormat(picture_t *pic)
{
    picture_buffer_t *res = pic->p_sys;

    if (res != ((void*)0))
        picture_Deallocate(res->fd, res->base, res->size);
}
