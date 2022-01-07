
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {TYPE_3__* cert_info; } ;
typedef TYPE_6__ X509 ;
struct TYPE_17__ {scalar_t__ ptr; } ;
struct TYPE_21__ {TYPE_4__ pkey; } ;
struct TYPE_18__ {int server_public_key_len; int server_public_key; } ;
struct TYPE_20__ {TYPE_5__ secure; } ;
struct TYPE_16__ {TYPE_2__* key; } ;
struct TYPE_15__ {TYPE_1__* algor; } ;
struct TYPE_14__ {int algorithm; } ;
typedef int RSA ;
typedef TYPE_7__ RDPCLIENT ;
typedef TYPE_8__ EVP_PKEY ;
typedef int BOOL ;


 int ASN1_OBJECT_free (int ) ;
 int DEBUG_RDP5 (char*) ;
 int EVP_PKEY_free (TYPE_8__*) ;
 int False ;
 scalar_t__ NID_md5WithRSAEncryption ;
 int NID_rsaEncryption ;
 int OBJ_nid2obj (int ) ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int RSAPublicKey_dup (int *) ;
 int RSA_size (int ) ;
 int SEC_MAX_MODULUS_SIZE ;
 int True ;
 TYPE_8__* X509_get_pubkey (TYPE_6__*) ;
 int error (char*,...) ;

__attribute__((used)) static BOOL
sec_parse_x509_key(RDPCLIENT * This, X509 * cert)
{
 EVP_PKEY *epk = ((void*)0);





 if (OBJ_obj2nid(cert->cert_info->key->algor->algorithm) == NID_md5WithRSAEncryption)
 {
  DEBUG_RDP5(("Re-setting algorithm type to RSA in server certificate\n"));
  ASN1_OBJECT_free(cert->cert_info->key->algor->algorithm);
  cert->cert_info->key->algor->algorithm = OBJ_nid2obj(NID_rsaEncryption);
 }
 epk = X509_get_pubkey(cert);
 if (((void*)0) == epk)
 {
  error("Failed to extract public key from certificate\n");
  return False;
 }

 This->secure.server_public_key = RSAPublicKey_dup((RSA *) epk->pkey.ptr);
 EVP_PKEY_free(epk);

 This->secure.server_public_key_len = RSA_size(This->secure.server_public_key);
 if ((This->secure.server_public_key_len < 64) || (This->secure.server_public_key_len > SEC_MAX_MODULUS_SIZE))
 {
  error("Bad server public key size (%u bits)\n", This->secure.server_public_key_len * 8);
  return False;
 }

 return True;
}
