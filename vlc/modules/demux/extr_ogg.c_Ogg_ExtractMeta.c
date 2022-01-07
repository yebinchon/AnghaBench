
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int i_codec; } ;
typedef TYPE_1__ es_format_t ;
struct TYPE_13__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_14__ {int updates; scalar_t__ p_meta; } ;
typedef TYPE_3__ demux_sys_t ;


 int INPUT_UPDATE_META ;
 int Ogg_ExtractComments (TYPE_2__*,TYPE_1__*,int const*,int) ;
 int Ogg_ExtractFlacComments (TYPE_2__*,TYPE_1__*,int const*,int) ;
 int Ogg_ExtractXiphMeta (TYPE_2__*,TYPE_1__*,int const*,int,int) ;
__attribute__((used)) static void Ogg_ExtractMeta( demux_t *p_demux, es_format_t *p_fmt, const uint8_t *p_headers, int i_headers )
{
    demux_sys_t *p_ogg = p_demux->p_sys;

    switch( p_fmt->i_codec )
    {

    case 129:
    case 130:
    case 136:
        Ogg_ExtractXiphMeta( p_demux, p_fmt, p_headers, i_headers, 1+6 );
        break;
    case 132:
        Ogg_ExtractXiphMeta( p_demux, p_fmt, p_headers, i_headers, 8 );
        break;
    case 131:
        Ogg_ExtractXiphMeta( p_demux, p_fmt, p_headers, i_headers, 0 );
        break;
    case 128:
        Ogg_ExtractComments( p_demux, p_fmt, p_headers, i_headers );
        break;

    case 133:

        Ogg_ExtractXiphMeta( p_demux, p_fmt, p_headers, i_headers, 1+7+1 );
        break;


    case 134:
        Ogg_ExtractFlacComments( p_demux, p_fmt, p_headers, i_headers );
        break;


    case 135:
    default:
        break;
    }
    if( p_ogg->p_meta )
        p_ogg->updates |= INPUT_UPDATE_META;
}
