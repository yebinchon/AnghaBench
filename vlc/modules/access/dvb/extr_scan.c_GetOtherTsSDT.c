
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_6__ {size_t i_sdt; TYPE_3__** pp_sdt; } ;
struct TYPE_7__ {TYPE_1__ others; } ;
typedef TYPE_2__ scan_session_t ;
struct TYPE_8__ {scalar_t__ i_extension; } ;
typedef TYPE_3__ dvbpsi_sdt_t ;



__attribute__((used)) static bool GetOtherTsSDT( scan_session_t *p_session, uint16_t i_ts_id,
                           dvbpsi_sdt_t ***ppp_sdt )
{
    for( size_t i=0; i<p_session->others.i_sdt; i++ )
    {
        if( p_session->others.pp_sdt[i]->i_extension == i_ts_id )
        {
            *ppp_sdt = &p_session->others.pp_sdt[i];
            return 1;
        }
    }

    return 0;
}
