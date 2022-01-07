
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int uint16 ;
typedef int * STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int LICENCE_HWID_SIZE ;
 int LICENCE_SIGNATURE_SIZE ;
 int LICENCE_TAG_AUTHRESP ;
 int LICENCE_TOKEN_SIZE ;
 int SEC_LICENCE_NEG ;
 int out_uint16_le (int *,int) ;
 int out_uint8 (int *,int) ;
 int out_uint8p (int *,int *,int) ;
 int s_mark_end (int *) ;
 int * sec_init (int *,int ,int) ;
 int sec_send (int *,int *,int ) ;

__attribute__((used)) static BOOL
licence_send_authresp(RDPCLIENT * This, uint8 * token, uint8 * crypt_hwid, uint8 * signature)
{
 uint32 sec_flags = SEC_LICENCE_NEG;
 uint16 length = 58;
 STREAM s;

 s = sec_init(This, sec_flags, length + 2);

 if(s == ((void*)0))
  return False;

 out_uint8(s, LICENCE_TAG_AUTHRESP);
 out_uint8(s, 2);
 out_uint16_le(s, length);

 out_uint16_le(s, 1);
 out_uint16_le(s, LICENCE_TOKEN_SIZE);
 out_uint8p(s, token, LICENCE_TOKEN_SIZE);

 out_uint16_le(s, 1);
 out_uint16_le(s, LICENCE_HWID_SIZE);
 out_uint8p(s, crypt_hwid, LICENCE_HWID_SIZE);

 out_uint8p(s, signature, LICENCE_SIGNATURE_SIZE);

 s_mark_end(s);
 return sec_send(This, s, sec_flags);
}
