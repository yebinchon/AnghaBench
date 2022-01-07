
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ const vlc_fourcc_t ;
struct TYPE_9__ {scalar_t__ i_codec; } ;
struct TYPE_8__ {TYPE_2__ fmt; } ;
typedef TYPE_1__ ts_es_t ;
typedef TYPE_2__ es_format_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_10__ {int i_type; } ;
typedef TYPE_3__ dvbpsi_pmt_es_t ;
typedef int demux_t ;



 scalar_t__ PMTEsHasRegistration (int *,TYPE_3__ const*,char*) ;
 int es_format_Change (TYPE_2__*,scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static bool PMTSetupEsRegistration( demux_t *p_demux, ts_es_t *p_es,
                                    const dvbpsi_pmt_es_t *p_dvbpsies )
{
    static const struct
    {
        char psz_tag[5];
        enum es_format_category_e i_cat;
        vlc_fourcc_t i_codec;
    } p_regs[] = {
        { "AC-3", 136, 132 },
        { "EAC3", 136, 129 },
        { "DTS1", 136, 130 },
        { "DTS2", 136, 130 },
        { "DTS3", 136, 130 },
        { "BSSD", 136, 133 },
        { "VC-1", 134, 128 },
        { "drac", 134, 131 },
        { "", 135, 0 }
    };
    es_format_t *p_fmt = &p_es->fmt;

    for( int i = 0; p_regs[i].i_cat != 135; i++ )
    {
        if( PMTEsHasRegistration( p_demux, p_dvbpsies, p_regs[i].psz_tag ) )
        {
            es_format_Change( p_fmt, p_regs[i].i_cat, p_regs[i].i_codec );


            if ( p_regs[i].i_codec == 132 && p_dvbpsies->i_type == 0x87 )
                p_fmt->i_codec = 129;

            return 1;
        }
    }
    return 0;
}
