
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
 int LICENCE_TAG_PRESENT ;
 int SEC_LICENCE_NEG ;
 int SEC_MODULUS_SIZE ;
 int SEC_PADDING_SIZE ;
 int SEC_RANDOM_SIZE ;
 int out_uint16 (int *,int ) ;
 int out_uint16_le (int *,int) ;
 int out_uint32_le (int *,int) ;
 int out_uint8 (int *,int) ;
 int out_uint8p (int *,int *,int) ;
 int out_uint8s (int *,int) ;
 int s_mark_end (int *) ;
 int * sec_init (int *,int ,int) ;
 int sec_send (int *,int *,int ) ;

__attribute__((used)) static BOOL
licence_present(RDPCLIENT * This, uint8 * client_random, uint8 * rsa_data,
  uint8 * licence_data, int licence_size, uint8 * hwid, uint8 * signature)
{
 uint32 sec_flags = SEC_LICENCE_NEG;
 uint16 length =
  16 + SEC_RANDOM_SIZE + SEC_MODULUS_SIZE + SEC_PADDING_SIZE +
  licence_size + LICENCE_HWID_SIZE + LICENCE_SIGNATURE_SIZE;
 STREAM s;

 s = sec_init(This, sec_flags, length + 4);

 if(s == ((void*)0))
  return False;

 out_uint8(s, LICENCE_TAG_PRESENT);
 out_uint8(s, 2);
 out_uint16_le(s, length);

 out_uint32_le(s, 1);
 out_uint16(s, 0);
 out_uint16_le(s, 0x0201);

 out_uint8p(s, client_random, SEC_RANDOM_SIZE);
 out_uint16(s, 0);
 out_uint16_le(s, (SEC_MODULUS_SIZE + SEC_PADDING_SIZE));
 out_uint8p(s, rsa_data, SEC_MODULUS_SIZE);
 out_uint8s(s, SEC_PADDING_SIZE);

 out_uint16_le(s, 1);
 out_uint16_le(s, licence_size);
 out_uint8p(s, licence_data, licence_size);

 out_uint16_le(s, 1);
 out_uint16_le(s, LICENCE_HWID_SIZE);
 out_uint8p(s, hwid, LICENCE_HWID_SIZE);

 out_uint8p(s, signature, LICENCE_SIGNATURE_SIZE);

 s_mark_end(s);
 return sec_send(This, s, sec_flags);
}
