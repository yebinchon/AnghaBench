
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned char uint16_t ;


 int C_ERR ;
 int C_OK ;
 unsigned char RDB_VERSION ;
 int crc64 (int ,unsigned char*,size_t) ;
 scalar_t__ memcmp (int *,unsigned char*,int) ;
 int memrev64ifbe (int *) ;

int verifyDumpPayload(unsigned char *p, size_t len) {
    unsigned char *footer;
    uint16_t rdbver;
    uint64_t crc;


    if (len < 10) return C_ERR;
    footer = p+(len-10);


    rdbver = (footer[1] << 8) | footer[0];
    if (rdbver > RDB_VERSION) return C_ERR;


    crc = crc64(0,p,len-8);
    memrev64ifbe(&crc);
    return (memcmp(&crc,footer+2,8) == 0) ? C_OK : C_ERR;
}
