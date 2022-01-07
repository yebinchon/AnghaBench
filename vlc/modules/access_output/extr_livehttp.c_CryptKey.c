
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_6__ {int* aes_ivs; int aes_ctx; int b_generate_iv; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
typedef scalar_t__ gcry_error_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int gcry_cipher_close (int ) ;
 scalar_t__ gcry_cipher_setiv (int ,int*,int) ;
 int gpg_strerror (scalar_t__) ;
 int memset (int*,int ,int) ;
 int msg_Err (TYPE_1__*,char*,int ) ;

__attribute__((used)) static int CryptKey( sout_access_out_t *p_access, uint32_t i_segment )
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;

    if( !p_sys->b_generate_iv )
    {

        memset( p_sys->aes_ivs, 0, 16 * sizeof(uint8_t));
        p_sys->aes_ivs[15] = i_segment & 0xff;
        p_sys->aes_ivs[14] = (i_segment >> 8 ) & 0xff;
        p_sys->aes_ivs[13] = (i_segment >> 16 ) & 0xff;
        p_sys->aes_ivs[12] = (i_segment >> 24 ) & 0xff;
    }

    gcry_error_t err = gcry_cipher_setiv( p_sys->aes_ctx,
                                          p_sys->aes_ivs, 16);
    if( err )
    {
        msg_Err(p_access, "Setting AES IVs failed: %s", gpg_strerror(err) );
        gcry_cipher_close( p_sys->aes_ctx);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
