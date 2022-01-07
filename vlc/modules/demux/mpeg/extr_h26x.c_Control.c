
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ demux_t ;


 int DEMUX_SET_TIME ;
 int VLC_EGENERIC ;
 int demux_vaControlHelper (int ,int ,int,int ,int,int,int ) ;

__attribute__((used)) static int Control( demux_t *p_demux, int i_query, va_list args )
{


    if( i_query == DEMUX_SET_TIME )
        return VLC_EGENERIC;
    else
        return demux_vaControlHelper( p_demux->s,
                                       0, -1,
                                       0, 1, i_query, args );
}
