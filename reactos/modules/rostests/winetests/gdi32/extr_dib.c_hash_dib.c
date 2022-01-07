
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_buf ;
typedef int HCRYPTHASH ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BITMAPINFO ;


 int CALG_SHA1 ;
 int CryptCreateHash (int ,int ,int ,int ,int *) ;
 int CryptDestroyHash (int ) ;
 int CryptGetHashParam (int ,int ,int*,int*,int ) ;
 int CryptHashData (int ,void const*,int,int ) ;
 int GetProcessHeap () ;
 int HP_HASHVAL ;
 char* HeapAlloc (int ,int ,int) ;
 int crypt_prov ;
 int get_dib_size (int const*) ;

__attribute__((used)) static char *hash_dib(const BITMAPINFO *bmi, const void *bits)
{
    DWORD dib_size = get_dib_size(bmi);
    HCRYPTHASH hash;
    char *buf;
    BYTE hash_buf[20];
    DWORD hash_size = sizeof(hash_buf);
    int i;
    static const char *hex = "0123456789abcdef";

    if(!crypt_prov) return ((void*)0);

    if(!CryptCreateHash(crypt_prov, CALG_SHA1, 0, 0, &hash)) return ((void*)0);

    CryptHashData(hash, bits, dib_size, 0);

    CryptGetHashParam(hash, HP_HASHVAL, ((void*)0), &hash_size, 0);
    if(hash_size != sizeof(hash_buf)) return ((void*)0);

    CryptGetHashParam(hash, HP_HASHVAL, hash_buf, &hash_size, 0);
    CryptDestroyHash(hash);

    buf = HeapAlloc(GetProcessHeap(), 0, hash_size * 2 + 1);

    for(i = 0; i < hash_size; i++)
    {
        buf[i * 2] = hex[hash_buf[i] >> 4];
        buf[i * 2 + 1] = hex[hash_buf[i] & 0xf];
    }
    buf[i * 2] = '\0';

    return buf;
}
