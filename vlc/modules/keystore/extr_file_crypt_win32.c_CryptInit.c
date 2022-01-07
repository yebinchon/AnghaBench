
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_keystore ;
struct crypt {int pf_encrypt; int pf_decrypt; } ;


 int Decrypt ;
 int Encrypt ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;

int CryptInit(vlc_keystore *p_keystore, struct crypt *p_crypt)
{
    VLC_UNUSED( p_keystore );
    p_crypt->pf_decrypt = Decrypt;
    p_crypt->pf_encrypt = Encrypt;
    return VLC_SUCCESS;
}
