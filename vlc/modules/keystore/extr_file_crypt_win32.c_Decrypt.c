
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void vlc_keystore ;
typedef int uint8_t ;
typedef int ProcessFunc ;


 int CryptUnprotectData ;
 size_t Process (int const*,size_t,int **,int ) ;
 int VLC_UNUSED (void*) ;

__attribute__((used)) static size_t Decrypt( vlc_keystore *p_keystore, void *p_ctx, const uint8_t *p_src,
                      size_t i_src_len, uint8_t ** pp_dst )
{
    VLC_UNUSED( p_keystore );
    VLC_UNUSED( p_ctx );



    return Process( p_src, i_src_len, pp_dst, (ProcessFunc)&CryptUnprotectData );
}
