
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int okm_len; scalar_t__ okm; int info_len; scalar_t__ info; int salt_len; scalar_t__ salt; int ikm_len; scalar_t__ ikm; } ;
typedef TYPE_1__ hkdf_tv_t ;


 int SHA512_DIGEST_LENGTH ;
 scalar_t__ bcmp (int *,scalar_t__,int ) ;
 int hexdump (char*,int *,int ) ;
 int hkdf_sha512 (int *,int ,int *,int ,int *,int ,int *,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int
run_test(int i, hkdf_tv_t *tv)
{
 int ret;
 uint8_t okey[SHA512_DIGEST_LENGTH];

 printf("TEST %d:\t", i);

 ret = hkdf_sha512((uint8_t *)tv->ikm, tv->ikm_len, (uint8_t *)tv->salt,
     tv->salt_len, (uint8_t *)tv->info, tv->info_len, okey, tv->okm_len);
 if (ret != 0) {
  printf("HKDF failed with error code %d\n", ret);
  return (ret);
 }

 if (bcmp(okey, tv->okm, tv->okm_len) != 0) {
  printf("Output Mismatch\n");
  hexdump("Expected:", (uint8_t *)tv->okm, tv->okm_len);
  hexdump("Actual:  ", okey, tv->okm_len);
  return (1);
 }

 printf("Passed\n");

 return (0);
}
