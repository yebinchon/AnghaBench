
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint32_t ;
typedef int es_format_t ;
typedef int demux_t ;


 unsigned int GetDW24BE (int const*) ;
 int Ogg_ExtractComments (int *,int *,int const*,unsigned int) ;

__attribute__((used)) static void Ogg_ExtractFlacComments( demux_t *p_demux, es_format_t *p_fmt,
                                     const uint8_t *p_headers, unsigned i_headers )
{

    if(i_headers <= 46)
        return;
    p_headers += 42; i_headers -= 42;

    uint32_t blocksize = GetDW24BE(&p_headers[1]);
    if(p_headers[0] == 0x84 && blocksize <= i_headers - 4)
    {
        Ogg_ExtractComments( p_demux, p_fmt, &p_headers[4], i_headers - 4 );
    }
}
