
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {int (* pf_control ) (TYPE_1__*,int,int ) ;} ;
typedef TYPE_1__ demux_t ;


 int stub1 (TYPE_1__*,int,int ) ;

int demux_vaControl( demux_t *demux, int query, va_list args )
{
    return demux->pf_control( demux, query, args );
}
