
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crc64Hash ;
 int printf (char*,int ) ;
 int sha1Hash ;
 int testHashingFunction (int ) ;

int main(void) {
    printf("SHA1 : %lu\n", testHashingFunction(sha1Hash));
    printf("CRC64: %lu\n", testHashingFunction(crc64Hash));
    return 0;
}
