
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint64_t ;
typedef unsigned char uint32_t ;
typedef int rio ;


 int RDB_14BITLEN ;
 unsigned char RDB_32BITLEN ;
 unsigned char RDB_64BITLEN ;
 int RDB_6BITLEN ;
 int RDB_ENCVAL ;
 unsigned char ntohl (unsigned char) ;
 unsigned char ntohu64 (unsigned char) ;
 int rdbExitReportCorruptRDB (char*,int) ;
 scalar_t__ rioRead (int *,unsigned char*,int) ;

int rdbLoadLenByRef(rio *rdb, int *isencoded, uint64_t *lenptr) {
    unsigned char buf[2];
    int type;

    if (isencoded) *isencoded = 0;
    if (rioRead(rdb,buf,1) == 0) return -1;
    type = (buf[0]&0xC0)>>6;
    if (type == RDB_ENCVAL) {

        if (isencoded) *isencoded = 1;
        *lenptr = buf[0]&0x3F;
    } else if (type == RDB_6BITLEN) {

        *lenptr = buf[0]&0x3F;
    } else if (type == RDB_14BITLEN) {

        if (rioRead(rdb,buf+1,1) == 0) return -1;
        *lenptr = ((buf[0]&0x3F)<<8)|buf[1];
    } else if (buf[0] == RDB_32BITLEN) {

        uint32_t len;
        if (rioRead(rdb,&len,4) == 0) return -1;
        *lenptr = ntohl(len);
    } else if (buf[0] == RDB_64BITLEN) {

        uint64_t len;
        if (rioRead(rdb,&len,8) == 0) return -1;
        *lenptr = ntohu64(len);
    } else {
        rdbExitReportCorruptRDB(
            "Unknown length encoding %d in rdbLoadLen()",type);
        return -1;
    }
    return 0;
}
