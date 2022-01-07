
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int i_size; scalar_t__* p_elems; } ;
struct TYPE_5__ {scalar_t__ seltype; TYPE_1__ programs; } ;
typedef TYPE_2__ demux_sys_t ;


 scalar_t__ PROGRAM_ALL ;

bool ProgramIsSelected( demux_sys_t *p_sys, uint16_t i_pgrm )
{
    if( p_sys->seltype == PROGRAM_ALL )
        return 1;

    for(int i=0; i<p_sys->programs.i_size; i++)
        if( p_sys->programs.p_elems[i] == i_pgrm )
            return 1;

    return 0;
}
