
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 size_t ZSTD_decompress (int ,int,int ,int) ;
 int dstDxt1 ;
 int memcmp (int ,int ,int) ;
 int printf (char*,char*) ;
 int rawDxt1 ;
 int srcZstd ;

int main() {
 size_t size = ZSTD_decompress(dstDxt1, sizeof dstDxt1, srcZstd, sizeof srcZstd);
 int compare = memcmp(rawDxt1, dstDxt1, sizeof dstDxt1);
 printf("Decompressed size: %s\n", (size == sizeof dstDxt1) ? "PASSED" : "FAILED");
 printf("Byte comparison: %s\n", (compare == 0) ? "PASSED" : "FAILED");
 if (size == sizeof dstDxt1 && compare == 0) {
  return EXIT_SUCCESS;
 }
 return EXIT_FAILURE;
}
