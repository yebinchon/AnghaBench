
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8 ;
typedef int null_data ;
typedef int hwid ;
struct TYPE_9__ {int key; int sign_key; } ;
struct TYPE_10__ {int licence_hostname; int licence_username; TYPE_1__ licence; } ;
typedef int STREAM ;
typedef TYPE_2__ RDPCLIENT ;
typedef int RC4_KEY ;
typedef int BOOL ;


 int False ;
 int LICENCE_HWID_SIZE ;
 int LICENCE_SIGNATURE_SIZE ;
 int RC4 (int *,int,int *,int *) ;
 int RC4_set_key (int *,int,int ) ;
 int SEC_MODULUS_SIZE ;
 int SEC_RANDOM_SIZE ;
 int True ;
 int free (int *) ;
 int in_uint8p (int ,int *,int ) ;
 int licence_generate_hwid (TYPE_2__*,int *) ;
 int licence_generate_keys (TYPE_2__*,int *,int *,int *) ;
 int licence_present (TYPE_2__*,int *,int *,int *,int,int *,int *) ;
 int licence_send_request (TYPE_2__*,int *,int *,int ,int ) ;
 int load_licence (TYPE_2__*,int **) ;
 int memset (int *,int ,int) ;
 int sec_sign (int *,int,int ,int,int *,int) ;

__attribute__((used)) static BOOL
licence_process_demand(RDPCLIENT * This, STREAM s)
{
 uint8 null_data[SEC_MODULUS_SIZE];
 uint8 *server_random;
 uint8 signature[LICENCE_SIGNATURE_SIZE];
 uint8 hwid[LICENCE_HWID_SIZE];
 uint8 *licence_data;
 int licence_size;
 RC4_KEY crypt_key;


 in_uint8p(s, server_random, SEC_RANDOM_SIZE);



 memset(null_data, 0, sizeof(null_data));
 licence_generate_keys(This, null_data, server_random, null_data);

 licence_size = load_licence(This, &licence_data);
 if (licence_size > 0)
 {

  licence_generate_hwid(This, hwid);
  sec_sign(signature, 16, This->licence.sign_key, 16, hwid, sizeof(hwid));


  RC4_set_key(&crypt_key, 16, This->licence.key);
  RC4(&crypt_key, sizeof(hwid), hwid, hwid);

  if(!licence_present(This, null_data, null_data, licence_data, licence_size, hwid, signature))
   return False;

  free(licence_data);
  return True;
 }

 return licence_send_request(This, null_data, null_data, This->licence_username, This->licence_hostname);
}
