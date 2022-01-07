
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int uint16 ;
typedef int X509 ;
struct TYPE_14__ {int disconnect_reason; } ;
struct TYPE_13__ {int * p; int * end; } ;
typedef TYPE_1__* STREAM ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int DEBUG_RDP5 (char*) ;
 int False ;
 scalar_t__ SEC_RANDOM_SIZE ;


 int True ;
 int X509_free (int *) ;
 int X509_print_fp (int ,int *) ;
 int * d2i_X509 (int *,int **,scalar_t__) ;
 int error (char*,...) ;
 int in_uint16_le (TYPE_1__*,int) ;
 int in_uint32_le (TYPE_1__*,scalar_t__) ;
 int in_uint8p (TYPE_1__*,int *,scalar_t__) ;
 int in_uint8s (TYPE_1__*,int) ;
 int s_check_end (TYPE_1__*) ;
 int sec_parse_public_key (TYPE_2__*,TYPE_1__*,int **,int **) ;
 int sec_parse_x509_key (TYPE_2__*,int *) ;
 int stdout ;
 int unimpl (char*,int) ;

__attribute__((used)) static BOOL
sec_parse_crypt_info(RDPCLIENT * This, STREAM s, uint32 * rc4_key_size,
       uint8 ** server_random, uint8 ** modulus, uint8 ** exponent)
{
 uint32 crypt_level, random_len, rsa_info_len;
 uint32 cacert_len, cert_len, flags;
 X509 *cacert, *server_cert;
 uint16 tag, length;
 uint8 *next_tag, *end;

 in_uint32_le(s, *rc4_key_size);
 in_uint32_le(s, crypt_level);
 if (crypt_level == 0)
  return False;
 in_uint32_le(s, random_len);
 in_uint32_le(s, rsa_info_len);

 if (random_len != SEC_RANDOM_SIZE)
 {
  error("random len %d, expected %d\n", random_len, SEC_RANDOM_SIZE);
  return False;
 }

 in_uint8p(s, *server_random, random_len);


 end = s->p + rsa_info_len;
 if (end > s->end)
  return False;

 in_uint32_le(s, flags);
 if (flags & 1)
 {
  DEBUG_RDP5(("We're going for the RDP4-style encryption\n"));
  in_uint8s(s, 8);

  while (s->p < end)
  {
   in_uint16_le(s, tag);
   in_uint16_le(s, length);

   next_tag = s->p + length;

   switch (tag)
   {
    case 128:
     if (!sec_parse_public_key(This, s, modulus, exponent))
      return False;
     DEBUG_RDP5(("Got Public key, RDP4-style\n"));

     break;

    case 129:




     break;

    default:
     unimpl("crypt tag 0x%x\n", tag);
   }

   s->p = next_tag;
  }
 }
 else
 {
  uint32 certcount;

  DEBUG_RDP5(("We're going for the RDP5-style encryption\n"));
  in_uint32_le(s, certcount);

  if (certcount < 2)
  {
   error("Server didn't send enough X509 certificates\n");
   This->disconnect_reason = 1798;
   return False;
  }

  for (; certcount > 2; certcount--)
  {
   uint32 ignorelen;
   X509 *ignorecert;

   DEBUG_RDP5(("Ignored certs left: %d\n", certcount));

   in_uint32_le(s, ignorelen);
   DEBUG_RDP5(("Ignored Certificate length is %d\n", ignorelen));
   ignorecert = d2i_X509(((void*)0), &(s->p), ignorelen);

   if (ignorecert == ((void*)0))
   {
    DEBUG_RDP5(("got a bad cert: this will probably screw up the rest of the communication\n"));
   }





  }
  in_uint32_le(s, cacert_len);
  DEBUG_RDP5(("CA Certificate length is %d\n", cacert_len));
  cacert = d2i_X509(((void*)0), &(s->p), cacert_len);


  if (((void*)0) == cacert)
  {
   error("Couldn't load CA Certificate from server\n");
   This->disconnect_reason = 1798;
   return False;
  }
  X509_free(cacert);

  in_uint32_le(s, cert_len);
  DEBUG_RDP5(("Certificate length is %d\n", cert_len));
  server_cert = d2i_X509(((void*)0), &(s->p), cert_len);
  if (((void*)0) == server_cert)
  {
   error("Couldn't load Certificate from server\n");
   This->disconnect_reason = 1798;
   return False;
  }

  in_uint8s(s, 16);





  if (!sec_parse_x509_key(This, server_cert))
  {
   DEBUG_RDP5(("Didn't parse X509 correctly\n"));
   X509_free(server_cert);
   This->disconnect_reason = 1798;
   return False;
  }
  X509_free(server_cert);
  return True;
 }
 return s_check_end(s);
}
