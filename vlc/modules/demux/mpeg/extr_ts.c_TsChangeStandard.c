
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ts_standards_e ;
struct TYPE_3__ {scalar_t__ standard; } ;
typedef TYPE_1__ demux_sys_t ;


 scalar_t__ TS_STANDARD_AUTO ;

void TsChangeStandard( demux_sys_t *p_sys, ts_standards_e v )
{
    if( p_sys->standard != TS_STANDARD_AUTO &&
        p_sys->standard != v )
        return;
    p_sys->standard = v;
}
