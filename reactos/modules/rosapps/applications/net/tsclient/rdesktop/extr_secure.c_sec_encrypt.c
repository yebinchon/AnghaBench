
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int encrypt_use_count; int rc4_encrypt_key; int encrypt_key; int rc4_key_len; int encrypt_update_key; } ;
struct TYPE_6__ {TYPE_1__ secure; } ;
typedef TYPE_2__ RDPCLIENT ;


 int RC4 (int *,int,int *,int *) ;
 int RC4_set_key (int *,int ,int ) ;
 int sec_update (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
sec_encrypt(RDPCLIENT * This, uint8 * data, int length)
{
 if (This->secure.encrypt_use_count == 4096)
 {
  sec_update(This, This->secure.encrypt_key, This->secure.encrypt_update_key);
  RC4_set_key(&This->secure.rc4_encrypt_key, This->secure.rc4_key_len, This->secure.encrypt_key);
  This->secure.encrypt_use_count = 0;
 }

 RC4(&This->secure.rc4_encrypt_key, length, data, data);
 This->secure.encrypt_use_count++;
}
