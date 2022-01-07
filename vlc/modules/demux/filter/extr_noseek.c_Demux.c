
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_next; } ;
typedef TYPE_1__ demux_t ;


 int demux_Demux (int ) ;

__attribute__((used)) static int Demux(demux_t *demux)
{
    return demux_Demux(demux->p_next);
}
