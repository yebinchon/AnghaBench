
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_8__ {int b_ts_format; } ;
typedef TYPE_2__ access_sys_t ;


 int ImportMarks (TYPE_1__*) ;
 int ImportMeta (TYPE_1__*) ;
 scalar_t__ ImportNextFile (TYPE_1__*) ;

__attribute__((used)) static bool ScanDirectory( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;


    p_sys->b_ts_format = 1;
    if( !ImportNextFile( p_access ) )
    {
        p_sys->b_ts_format = !p_sys->b_ts_format;
        if( !ImportNextFile( p_access ) )
            return 0;
    }


    while( ImportNextFile( p_access ) )
        continue;


    ImportMeta( p_access );


    ImportMarks( p_access );

    return 1;
}
