
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_6__ {int server_public_key_len; int * crypted_random; int * server_public_key; } ;
struct TYPE_7__ {TYPE_1__ secure; } ;
typedef int STREAM ;
typedef TYPE_2__ RDPCLIENT ;


 int DEBUG (char*) ;
 int RSA_NO_PADDING ;
 int RSA_free (int *) ;
 int RSA_public_encrypt (int,int *,int *,int *,int ) ;
 int SEC_MAX_MODULUS_SIZE ;
 int SEC_RANDOM_SIZE ;
 int generate_random (int *) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int reverse (int *,int) ;
 int sec_generate_keys (TYPE_2__*,int *,int *,int) ;
 int sec_parse_crypt_info (TYPE_2__*,int ,int*,int **,int **,int **) ;
 int sec_rsa_encrypt (int *,int *,int,int,int *,int *) ;

__attribute__((used)) static void
sec_process_crypt_info(RDPCLIENT * This, STREAM s)
{
 uint8 *server_random, *modulus, *exponent;
 uint8 client_random[SEC_RANDOM_SIZE];
 uint32 rc4_key_size;

 if (!sec_parse_crypt_info(This, s, &rc4_key_size, &server_random, &modulus, &exponent))
 {
  DEBUG(("Failed to parse crypt info\n"));
  return;
 }

 DEBUG(("Generating client random\n"));
 generate_random(client_random);

 if (((void*)0) != This->secure.server_public_key)
 {

  uint8 inr[SEC_MAX_MODULUS_SIZE];
  uint32 padding_len = This->secure.server_public_key_len - SEC_RANDOM_SIZE;


  memset(inr, 0, padding_len);







  memcpy(inr + padding_len, client_random, SEC_RANDOM_SIZE);
  reverse(inr + padding_len, SEC_RANDOM_SIZE);

  RSA_public_encrypt(This->secure.server_public_key_len,
       inr, This->secure.crypted_random, This->secure.server_public_key, RSA_NO_PADDING);

  reverse(This->secure.crypted_random, This->secure.server_public_key_len);

  RSA_free(This->secure.server_public_key);
  This->secure.server_public_key = ((void*)0);
 }
 else
 {
  sec_rsa_encrypt(This->secure.crypted_random,
    client_random, SEC_RANDOM_SIZE, This->secure.server_public_key_len, modulus,
    exponent);
 }
 sec_generate_keys(This, client_random, server_random, rc4_key_size);
}
