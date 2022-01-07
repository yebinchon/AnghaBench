
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int rc4_key_len; } ;
struct TYPE_5__ {TYPE_1__ secure; } ;
typedef int SHA_CTX ;
typedef TYPE_2__ RDPCLIENT ;
typedef int RC4_KEY ;
typedef int MD5_CTX ;


 int MD5_Final (int *,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,int *,int) ;
 int RC4 (int *,int,int *,int *) ;
 int RC4_set_key (int *,int,int *) ;
 int SHA1_Final (int *,int *) ;
 int SHA1_Init (int *) ;
 int SHA1_Update (int *,int *,int) ;
 int * pad_54 ;
 int * pad_92 ;
 int sec_make_40bit (int *) ;

__attribute__((used)) static void
sec_update(RDPCLIENT * This, uint8 * key, uint8 * update_key)
{
 uint8 shasig[20];
 SHA_CTX sha;
 MD5_CTX md5;
 RC4_KEY update;

 SHA1_Init(&sha);
 SHA1_Update(&sha, update_key, This->secure.rc4_key_len);
 SHA1_Update(&sha, pad_54, 40);
 SHA1_Update(&sha, key, This->secure.rc4_key_len);
 SHA1_Final(shasig, &sha);

 MD5_Init(&md5);
 MD5_Update(&md5, update_key, This->secure.rc4_key_len);
 MD5_Update(&md5, pad_92, 48);
 MD5_Update(&md5, shasig, 20);
 MD5_Final(key, &md5);

 RC4_set_key(&update, This->secure.rc4_key_len, key);
 RC4(&update, This->secure.rc4_key_len, key, key);

 if (This->secure.rc4_key_len == 8)
  sec_make_40bit(key);
}
