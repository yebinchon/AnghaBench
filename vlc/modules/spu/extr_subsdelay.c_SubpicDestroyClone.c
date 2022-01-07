
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_region; } ;
typedef TYPE_1__ subpicture_t ;


 int subpicture_Delete (TYPE_1__*) ;

__attribute__((used)) static void SubpicDestroyClone( subpicture_t *p_subpic )
{
    p_subpic->p_region = ((void*)0);
    subpicture_Delete( p_subpic );
}
