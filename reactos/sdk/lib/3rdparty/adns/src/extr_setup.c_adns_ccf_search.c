
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_state ;


 int ccf_search (int ,char const*,int,char const*) ;

void adns_ccf_search(adns_state ads, const char *fn, int lno, const char *buf) {
    ccf_search(ads, fn, lno, buf);
}
