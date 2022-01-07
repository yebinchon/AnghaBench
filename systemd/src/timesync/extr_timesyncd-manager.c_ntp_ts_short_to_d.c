
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntp_ts_short {int frac; int sec; } ;


 double be16toh (int ) ;

__attribute__((used)) static double ntp_ts_short_to_d(const struct ntp_ts_short *ts) {
        return be16toh(ts->sec) + (be16toh(ts->frac) / 65536.0);
}
