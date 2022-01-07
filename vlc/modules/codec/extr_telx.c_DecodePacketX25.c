
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int psz_line ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int * ppsz_lines; } ;
typedef TYPE_2__ decoder_sys_t ;


 int decode_string (char*,int,TYPE_2__*,int,int const*,int) ;
 scalar_t__ strcmp (char*,int ) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static bool DecodePacketX25( decoder_t *p_dec, const uint8_t *packet,
                             int magazine )
{
    decoder_sys_t *p_sys = p_dec->p_sys;


    char psz_line[256];
    decode_string( psz_line, sizeof(psz_line), p_sys, magazine,
                   packet + 6, 40 );


    if ( strcmp( psz_line, p_sys->ppsz_lines[0] ) )
    {
        strncpy( p_sys->ppsz_lines[0], psz_line,
                 sizeof(p_sys->ppsz_lines[0]) - 1 );

    }

    return 0;
}
