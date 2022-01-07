
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_next; } ;
typedef TYPE_1__ picture_t ;


 int picture_Release (TYPE_1__*) ;

__attribute__((used)) static void FilterDeletePictures( picture_t *picture )
{
    while( picture )
    {
        picture_t *next = picture->p_next;
        picture_Release( picture );
        picture = next;
    }
}
