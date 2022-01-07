
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8 ;
typedef int uint32 ;
typedef int uint16 ;
typedef int * STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int LICENCE_TAG_HOST ;
 int LICENCE_TAG_REQUEST ;
 int LICENCE_TAG_USER ;
 int SEC_LICENCE_NEG ;
 int SEC_MODULUS_SIZE ;
 int SEC_PADDING_SIZE ;
 int SEC_RANDOM_SIZE ;
 int out_uint16 (int *,int ) ;
 int out_uint16_le (int *,int) ;
 int out_uint32_le (int *,int) ;
 int out_uint8 (int *,int) ;
 int out_uint8p (int *,char*,int) ;
 int out_uint8s (int *,int) ;
 int s_mark_end (int *) ;
 int * sec_init (int *,int ,int) ;
 int sec_send (int *,int *,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static BOOL
licence_send_request(RDPCLIENT * This, uint8 * client_random, uint8 * rsa_data, char *user, char *host)
{
 uint32 sec_flags = SEC_LICENCE_NEG;
 uint16 userlen = (uint16)strlen(user) + 1;
 uint16 hostlen = (uint16)strlen(host) + 1;
 uint16 length = 128 + userlen + hostlen;
 STREAM s;

 s = sec_init(This, sec_flags, length + 2);

 if(s == ((void*)0))
  return False;

 out_uint8(s, LICENCE_TAG_REQUEST);
 out_uint8(s, 2);
 out_uint16_le(s, length);

 out_uint32_le(s, 1);
 out_uint16(s, 0);
 out_uint16_le(s, 0xff01);

 out_uint8p(s, client_random, SEC_RANDOM_SIZE);
 out_uint16(s, 0);
 out_uint16_le(s, (SEC_MODULUS_SIZE + SEC_PADDING_SIZE));
 out_uint8p(s, rsa_data, SEC_MODULUS_SIZE);
 out_uint8s(s, SEC_PADDING_SIZE);

 out_uint16_le(s, LICENCE_TAG_USER);
 out_uint16_le(s, userlen);
 out_uint8p(s, user, userlen);

 out_uint16_le(s, LICENCE_TAG_HOST);
 out_uint16_le(s, hostlen);
 out_uint8p(s, host, hostlen);

 s_mark_end(s);
 return sec_send(This, s, sec_flags);
}
