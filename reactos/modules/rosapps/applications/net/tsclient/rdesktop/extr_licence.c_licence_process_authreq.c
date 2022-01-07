
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int sealed_buffer ;
struct TYPE_6__ {int key; int sign_key; } ;
struct TYPE_7__ {TYPE_1__ licence; } ;
typedef int STREAM ;
typedef TYPE_2__ RDPCLIENT ;
typedef int RC4_KEY ;


 int LICENCE_HWID_SIZE ;
 int LICENCE_SIGNATURE_SIZE ;
 int LICENCE_TOKEN_SIZE ;
 int RC4 (int *,int,int *,int *) ;
 int RC4_set_key (int *,int,int ) ;
 int licence_generate_hwid (TYPE_2__*,int *) ;
 int licence_parse_authreq (int ,int **,int **) ;
 int licence_send_authresp (TYPE_2__*,int *,int *,int *) ;
 int memcpy (int *,int *,int) ;
 int sec_sign (int *,int,int ,int,int *,int) ;

__attribute__((used)) static void
licence_process_authreq(RDPCLIENT * This, STREAM s)
{
 uint8 *in_token, *in_sig;
 uint8 out_token[LICENCE_TOKEN_SIZE], decrypt_token[LICENCE_TOKEN_SIZE];
 uint8 hwid[LICENCE_HWID_SIZE], crypt_hwid[LICENCE_HWID_SIZE];
 uint8 sealed_buffer[LICENCE_TOKEN_SIZE + LICENCE_HWID_SIZE];
 uint8 out_sig[LICENCE_SIGNATURE_SIZE];
 RC4_KEY crypt_key;


 licence_parse_authreq(s, &in_token, &in_sig);
 memcpy(out_token, in_token, LICENCE_TOKEN_SIZE);


 RC4_set_key(&crypt_key, 16, This->licence.key);
 RC4(&crypt_key, LICENCE_TOKEN_SIZE, in_token, decrypt_token);


 licence_generate_hwid(This, hwid);
 memcpy(sealed_buffer, decrypt_token, LICENCE_TOKEN_SIZE);
 memcpy(sealed_buffer + LICENCE_TOKEN_SIZE, hwid, LICENCE_HWID_SIZE);
 sec_sign(out_sig, 16, This->licence.sign_key, 16, sealed_buffer, sizeof(sealed_buffer));


 RC4_set_key(&crypt_key, 16, This->licence.key);
 RC4(&crypt_key, LICENCE_HWID_SIZE, hwid, crypt_hwid);

 licence_send_authresp(This, out_token, crypt_hwid, out_sig);
}
