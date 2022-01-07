
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct ntp_ts {int frac; int sec; } ;


 int OFFSET_1900_1970 ;
 int USEC_PER_SEC ;
 int be32toh (int ) ;

__attribute__((used)) static usec_t ntp_ts_to_usec(const struct ntp_ts *ts) {
        return (be32toh(ts->sec) - OFFSET_1900_1970) * USEC_PER_SEC + (be32toh(ts->frac) * USEC_PER_SEC) / (usec_t) 0x100000000ULL;
}
