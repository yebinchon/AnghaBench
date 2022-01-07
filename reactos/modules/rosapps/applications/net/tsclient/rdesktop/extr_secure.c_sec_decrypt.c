
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int decrypt_use_count; int rc4_decrypt_key; int decrypt_key; int rc4_key_len; int decrypt_update_key; } ;
struct TYPE_6__ {TYPE_1__ secure; } ;
typedef TYPE_2__ RDPCLIENT ;


 int RC4 (int *,int,int *,int *) ;
 int RC4_set_key (int *,int ,int ) ;
 int sec_update (TYPE_2__*,int ,int ) ;

void
sec_decrypt(RDPCLIENT * This, uint8 * data, int length)
{
 if (This->secure.decrypt_use_count == 4096)
 {
  sec_update(This, This->secure.decrypt_key, This->secure.decrypt_update_key);
  RC4_set_key(&This->secure.rc4_decrypt_key, This->secure.rc4_key_len, This->secure.decrypt_key);
  This->secure.decrypt_use_count = 0;
 }

 RC4(&This->secure.rc4_decrypt_key, length, data, data);
 This->secure.decrypt_use_count++;
}
