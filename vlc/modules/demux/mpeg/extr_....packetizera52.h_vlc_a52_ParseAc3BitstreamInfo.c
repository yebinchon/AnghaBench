
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {void* i_dsurmod; } ;
struct vlc_a52_bitstream_info {int i_fscod; int i_frmsizcod; int i_acmod; void* i_lfeon; TYPE_1__ ac3; void* i_bsmod; void* i_bsid; } ;
typedef int bs_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int bs_init (int *,int const*,size_t) ;
 void* bs_read (int *,int) ;
 int bs_skip (int *,int) ;

__attribute__((used)) static inline int vlc_a52_ParseAc3BitstreamInfo( struct vlc_a52_bitstream_info *bs,
                                                 const uint8_t *p_buf, size_t i_buf )
{
    bs_t s;
    bs_init( &s, p_buf, i_buf );


    bs->i_fscod = bs_read( &s, 2 );
    if( bs->i_fscod == 3 )
        return VLC_EGENERIC;
    bs->i_frmsizcod = bs_read( &s, 6 );
    if( bs->i_frmsizcod >= 38 )
        return VLC_EGENERIC;
    bs->i_bsid = bs_read( &s, 5 );
    bs->i_bsmod = bs_read( &s, 3 );
    bs->i_acmod = bs_read( &s, 3 );
    if( ( bs->i_acmod & 0x1 ) && ( bs->i_acmod != 0x1 ) )
    {

        bs_skip( &s, 2 );
    }
    if( bs->i_acmod & 0x4 )
    {

        bs_skip( &s, 2 );
    }

    bs->ac3.i_dsurmod = bs->i_acmod == 0x2 ? bs_read( &s, 2 ) : 0;
    bs->i_lfeon = bs_read( &s, 1 );

    return VLC_SUCCESS;
}
