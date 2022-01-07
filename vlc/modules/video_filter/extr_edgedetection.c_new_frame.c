
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
struct TYPE_6__ {TYPE_1__ owner; } ;
typedef TYPE_2__ filter_t ;


 int * filter_NewPicture (TYPE_2__*) ;

__attribute__((used)) static picture_t *new_frame( filter_t *p_filter )
{
    filter_t *p_this = p_filter->owner.sys;


    return filter_NewPicture( p_this );
}
