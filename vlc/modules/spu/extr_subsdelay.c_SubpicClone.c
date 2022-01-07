
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int subpicture_updater_t ;
struct TYPE_7__ {int * p_private; int updater; } ;
typedef TYPE_1__ subpicture_t ;
typedef int subpicture_private_t ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* subpicture_New (int *) ;

__attribute__((used)) static subpicture_t *SubpicClone( subpicture_t *p_source, subpicture_updater_t *updater )
{
    subpicture_t *p_subpic;
    subpicture_updater_t subpic_updater;
    subpicture_private_t *p_subpic_private;

    p_subpic = subpicture_New( updater );

    if( !p_subpic )
    {
        return ((void*)0);
    }


    subpic_updater = p_subpic->updater;
    p_subpic_private = p_subpic->p_private;


    memcpy( p_subpic, p_source, sizeof( subpicture_t ) );


    p_subpic->updater = subpic_updater;
    p_subpic->p_private = p_subpic_private;

    return p_subpic;
}
