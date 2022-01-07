
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p_region; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_4__ {int p_text; } ;


 scalar_t__ SubsdelayIsTextEmpty (int ) ;

__attribute__((used)) static bool SubpicIsEmpty( subpicture_t* p_subpic )
{
    return ( p_subpic->p_region && ( SubsdelayIsTextEmpty( p_subpic->p_region->p_text ) ) );
}
