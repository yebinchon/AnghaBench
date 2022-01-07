
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sha2_byte ;
typedef int SHA512_CTX ;
typedef int SHA384_CTX ;


 int SHA512_Update (int *,int const*,size_t) ;

void SHA384_Update(SHA384_CTX* context, const sha2_byte* data, size_t len) {
 SHA512_Update((SHA512_CTX*)context, data, len);
}
