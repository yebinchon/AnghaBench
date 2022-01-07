
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int rc4_key_len; int * encrypt_key; int rc4_encrypt_key; int * decrypt_key; int rc4_decrypt_key; int * encrypt_update_key; int * decrypt_update_key; int * sign_key; } ;
struct TYPE_5__ {TYPE_1__ secure; } ;
typedef TYPE_2__ RDPCLIENT ;


 int DEBUG (char*) ;
 int RC4_set_key (int *,int,int *) ;
 int memcpy (int *,int *,int) ;
 int sec_hash_16 (int *,int *,int *,int *) ;
 int sec_hash_48 (int *,int *,int *,int *,char) ;
 int sec_make_40bit (int *) ;

__attribute__((used)) static void
sec_generate_keys(RDPCLIENT * This, uint8 * client_random, uint8 * server_random, int rc4_key_size)
{
 uint8 pre_master_secret[48];
 uint8 master_secret[48];
 uint8 key_block[48];


 memcpy(pre_master_secret, client_random, 24);
 memcpy(pre_master_secret + 24, server_random, 24);


 sec_hash_48(master_secret, pre_master_secret, client_random, server_random, 'A');
 sec_hash_48(key_block, master_secret, client_random, server_random, 'X');


 memcpy(This->secure.sign_key, key_block, 16);


 sec_hash_16(This->secure.decrypt_key, &key_block[16], client_random, server_random);
 sec_hash_16(This->secure.encrypt_key, &key_block[32], client_random, server_random);

 if (rc4_key_size == 1)
 {
  DEBUG(("40-bit encryption enabled\n"));
  sec_make_40bit(This->secure.sign_key);
  sec_make_40bit(This->secure.decrypt_key);
  sec_make_40bit(This->secure.encrypt_key);
  This->secure.rc4_key_len = 8;
 }
 else
 {
  DEBUG(("rc_4_key_size == %d, 128-bit encryption enabled\n", rc4_key_size));
  This->secure.rc4_key_len = 16;
 }


 memcpy(This->secure.decrypt_update_key, This->secure.decrypt_key, 16);
 memcpy(This->secure.encrypt_update_key, This->secure.encrypt_key, 16);


 RC4_set_key(&This->secure.rc4_decrypt_key, This->secure.rc4_key_len, This->secure.decrypt_key);
 RC4_set_key(&This->secure.rc4_encrypt_key, This->secure.rc4_key_len, This->secure.encrypt_key);
}
