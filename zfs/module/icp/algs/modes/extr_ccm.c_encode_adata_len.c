
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long ulong_t ;
typedef int uint8_t ;
typedef void* uint64_t ;
typedef void* uint32_t ;


 void* htonl (unsigned long long) ;

__attribute__((used)) static void
encode_adata_len(ulong_t auth_data_len, uint8_t *encoded, size_t *encoded_len)
{







 if (auth_data_len < ((1ULL<<16) - (1ULL<<8))) {

  *encoded_len = 2;
  encoded[0] = (auth_data_len & 0xff00) >> 8;
  encoded[1] = auth_data_len & 0xff;

 } else if ((auth_data_len >= ((1ULL<<16) - (1ULL<<8))) &&
     (auth_data_len < (1ULL << 31))) {

  *encoded_len = 6;
  encoded[0] = 0xff;
  encoded[1] = 0xfe;




  encoded[2] = (auth_data_len & 0xff000000) >> 24;
  encoded[3] = (auth_data_len & 0xff0000) >> 16;
  encoded[4] = (auth_data_len & 0xff00) >> 8;
  encoded[5] = auth_data_len & 0xff;



 } else {

  *encoded_len = 10;
  encoded[0] = 0xff;
  encoded[1] = 0xff;




  encoded[2] = (auth_data_len & 0xff00000000000000) >> 56;
  encoded[3] = (auth_data_len & 0xff000000000000) >> 48;
  encoded[4] = (auth_data_len & 0xff0000000000) >> 40;
  encoded[5] = (auth_data_len & 0xff00000000) >> 32;
  encoded[6] = (auth_data_len & 0xff000000) >> 24;
  encoded[7] = (auth_data_len & 0xff0000) >> 16;
  encoded[8] = (auth_data_len & 0xff00) >> 8;
  encoded[9] = auth_data_len & 0xff;


 }
}
