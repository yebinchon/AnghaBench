
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct ntp_ts_short {int frac; int sec; } ;


 int USEC_PER_SEC ;
 int be16toh (int ) ;

__attribute__((used)) static usec_t ntp_ts_short_to_usec(const struct ntp_ts_short *ts) {
        return be16toh(ts->sec) * USEC_PER_SEC + (be16toh(ts->frac) * USEC_PER_SEC) / (usec_t) 0x10000ULL;
}
