
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_mplex; } ;
typedef TYPE_3__ scan_service_t ;
struct TYPE_5__ {int type; int inner_fec; int modulation; int i_symbolrate; int i_frequency; scalar_t__ polarization; int i_bandwidth; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;





 int asprintf (char**,char*,int ,int ,char,...) ;
 int scan_value_coderate (int ) ;
 char scan_value_modulation (int ) ;

char * scan_service_GetUri( const scan_service_t *s )
{
    char *psz_mrl = ((void*)0);
    int i_ret = -1;
    switch( s->p_mplex->cfg.type )
    {
        case 128:
            i_ret = asprintf( &psz_mrl, "dvb://frequency=%d:bandwidth=%d:modulation=%s",
                              s->p_mplex->cfg.i_frequency,
                              s->p_mplex->cfg.i_bandwidth,
                              scan_value_modulation( s->p_mplex->cfg.modulation ) );
            break;
        case 129:
            i_ret = asprintf( &psz_mrl, "dvb://frequency=%d:srate=%d:polarization=%c:fec=%s",
                              s->p_mplex->cfg.i_frequency,
                              s->p_mplex->cfg.i_symbolrate,
                              (char) s->p_mplex->cfg.polarization,
                              scan_value_coderate( s->p_mplex->cfg.inner_fec ) );
            break;
        case 130:
            i_ret = asprintf( &psz_mrl, "dvb://frequency=%d:srate=%d:modulation=%s:fec=%s",
                              s->p_mplex->cfg.i_frequency,
                              s->p_mplex->cfg.i_symbolrate,
                              scan_value_modulation( s->p_mplex->cfg.modulation ),
                              scan_value_coderate( s->p_mplex->cfg.inner_fec ) );
        default:
            break;
    }
    return (i_ret >=0) ? psz_mrl : ((void*)0);
}
