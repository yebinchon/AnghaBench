
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint8_t ;
typedef int NTSTATUS ;
typedef int HCRYPTPROV ;
typedef int BCRYPT_ALG_HANDLE ;


 int BCRYPT_RNG_ALGORITHM ;
 scalar_t__ BCRYPT_SUCCESS (int ) ;
 int BCryptCloseAlgorithmProvider (int ,int ) ;
 int BCryptGenRandom (int ,void*,size_t,int ) ;
 int BCryptOpenAlgorithmProvider (int *,int ,int ,int ) ;
 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int ,int ,int ) ;
 int CryptGenRandom (int ,size_t,void*) ;
 int CryptReleaseContext (int ,int ) ;
 int MS_DEF_PROV ;
 int MS_PRIMITIVE_PROVIDER ;
 int PROV_RSA_FULL ;
 int memcpy (int *,unsigned int*,int) ;
 unsigned int rand () ;

void vlc_rand_bytes (void *buf, size_t len)
{
    size_t count = len;
    uint8_t *p_buf = (uint8_t *)buf;


    while (count > 0)
    {
        unsigned int val;
        val = rand();
        if (count < sizeof (val))
        {
            memcpy (p_buf, &val, count);
            break;
        }

        memcpy (p_buf, &val, sizeof (val));
        count -= sizeof (val);
        p_buf += sizeof (val);
    }

    HCRYPTPROV hProv;

    if( CryptAcquireContext(
        &hProv,
        ((void*)0),
        MS_DEF_PROV,
        PROV_RSA_FULL,
        CRYPT_VERIFYCONTEXT) )
    {


        CryptGenRandom(hProv, len, buf);
        CryptReleaseContext(hProv, 0);
    }

}
