
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int strmtyp; int i_substreamid; int i_frmsiz; int i_fscod2; int i_numblkscod; } ;
struct vlc_a52_bitstream_info {int i_fscod; int i_acmod; int i_bsid; int i_bsmod; TYPE_1__ eac3; scalar_t__ i_lfeon; } ;
typedef int bs_t ;


 size_t VLC_A52_MIN_HEADER_SIZE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int bs_align (int *) ;
 int bs_init (int *,int const*,size_t) ;
 int bs_read (int *,int) ;
 scalar_t__ bs_read1 (int *) ;
 int bs_skip (int *,int) ;

__attribute__((used)) static inline int vlc_a52_ParseEac3BitstreamInfo( struct vlc_a52_bitstream_info *bs,
                                                  const uint8_t *p_buf, size_t i_buf )
{
    bs_t s;
    bs_init( &s, p_buf, i_buf );
    bs->eac3.strmtyp = bs_read( &s, 2 );
    bs->eac3.i_substreamid = bs_read( &s, 3 );

    bs->eac3.i_frmsiz = bs_read( &s, 11 );
    if( bs->eac3.i_frmsiz < 2 )
        return VLC_EGENERIC;

    bs->i_fscod = bs_read( &s, 2 );
    if( bs->i_fscod == 0x03 )
    {
        bs->eac3.i_fscod2 = bs_read( &s, 2 );
        if( bs->eac3.i_fscod2 == 0x03 )
            return VLC_EGENERIC;
        bs->eac3.i_numblkscod = 0x03;
    }
    else bs->eac3.i_numblkscod = bs_read( &s, 2 );

    bs->i_acmod = bs_read( &s, 3 );
    bs->i_lfeon = bs_read1( &s );
    bs->i_bsid = bs_read( &s, 5 );

    if( i_buf <= VLC_A52_MIN_HEADER_SIZE )
    {
        bs->i_bsmod = 0;
        return VLC_SUCCESS;
    }

    bs_skip( &s, 5 );
    if(bs_read1( &s ))
        bs_skip( &s, 8 );

    if( bs->i_acmod == 0x00 )
    {
        bs_skip( &s, 5 );
        if(bs_read1( &s ))
            bs_skip( &s, 8 );
    }

    if( bs->eac3.strmtyp == 0x01 && bs_read1( &s ) )
        bs_skip( &s, 16 );

    if( bs_read1( &s ) )
    {
        if( bs->i_acmod > 0x02 )
        {
            bs_skip( &s, 2 );
            if( bs->i_acmod & 0x01 )
                bs_skip( &s, 6 );
            if( bs->i_acmod & 0x04 )
                bs_skip( &s, 6 );
        }

        if( bs->i_lfeon && bs_read1( &s ) )
            bs_skip( &s, 5 );

        if( bs->eac3.strmtyp == 0x00 )
        {
            if( bs_read1( &s ) )
                bs_skip( &s, 6 );
            if( bs->i_acmod == 0x00 && bs_read1( &s ) )
                bs_skip( &s, 6 );
            if(bs_read1( &s ))
                bs_skip( &s, 6 );
            const uint8_t i_mixdef = bs_read( &s, 2 );
            if( i_mixdef == 0x01 )
                bs_skip( &s, 5 );
            else if( i_mixdef == 0x02 )
                bs_skip( &s, 12 );
            else if( i_mixdef == 0x03 )
            {
                const unsigned mixdeflen = bs_read( &s, 5 ) + 2;
                for(size_t i=0; i<mixdeflen; i++)
                    bs_skip( &s, 8 );
                bs_align( &s );
            }
            if( bs->i_acmod < 0x02 )
            {
                if( bs_read1( &s ) )
                    bs_skip( &s, 14 );
                if( bs->i_acmod == 0x00 && bs_read1( &s ) )
                    bs_skip( &s, 14 );
            }
            if( bs_read1( &s ) )
            {
                const uint8_t blkspersyncframe[] = { 0+1, 1, 2, 6 };
                const size_t nb = blkspersyncframe[bs->eac3.i_numblkscod];
                for(size_t i=0; i<nb; i++)
                {
                    if( bs->eac3.i_numblkscod == 0x00 )
                        bs_skip( &s, 5 );
                }
            }
        }
    }

    if( bs_read1( &s ) )
    {
        bs->i_bsmod = bs_read( &s, 3 );

    }
    else bs->i_bsmod = 0;

    return VLC_SUCCESS;
}
