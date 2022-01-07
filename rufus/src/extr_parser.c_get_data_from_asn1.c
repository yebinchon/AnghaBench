
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int BOOL ;


 int free (int *) ;
 int get_data_from_asn1_internal (int const*,size_t,int *,size_t,int ,void**,size_t*,int*) ;
 int * oid_from_str (char const*,size_t*) ;
 int uprintf (char*,...) ;

void* get_data_from_asn1(const uint8_t* buf, size_t buf_len, const char* oid_str, uint8_t asn1_type, size_t* data_len)
{
 void* data = ((void*)0);
 uint8_t* oid = ((void*)0);
 size_t oid_len = 0;
 BOOL matched = ((oid_str == ((void*)0)) || (oid_str[0] == 0));

 if (buf_len >= 65536) {
  uprintf("get_data_from_asn1: Buffers larger than 64KB are not supported");
  return ((void*)0);
 }

 if (!matched) {

  oid = oid_from_str(oid_str, &oid_len);
  if (oid == ((void*)0)) {
   uprintf("get_data_from_asn1: Could not convert OID string '%s'", oid_str);
   return ((void*)0);
  }
 }


 get_data_from_asn1_internal(buf, buf_len, oid, oid_len, asn1_type, &data, data_len, &matched);
 free(oid);
 return data;
}
