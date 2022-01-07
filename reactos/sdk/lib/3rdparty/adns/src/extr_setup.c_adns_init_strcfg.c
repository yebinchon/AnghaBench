
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* adns_state ;
typedef int adns_initflags ;
struct TYPE_8__ {int configerrno; } ;
typedef int FILE ;


 int adns__consistency (TYPE_1__*,int ,int ) ;
 int cc_entex ;
 int init_abort (TYPE_1__*) ;
 int init_begin (TYPE_1__**,int ,int *) ;
 int init_finish (TYPE_1__*) ;
 int readconfigtext (TYPE_1__*,char const*,char*) ;

int adns_init_strcfg(adns_state *ads_r, adns_initflags flags,
       FILE *diagfile, const char *configtext) {
  adns_state ads;
  int r;

  r= init_begin(&ads, flags, diagfile); if (r) return r;

  readconfigtext(ads,configtext,"<supplied configuration text>");
  if (ads->configerrno) {
    r= ads->configerrno;
    init_abort(ads);
    return r;
  }

  r= init_finish(ads); if (r) return r;
  adns__consistency(ads,0,cc_entex);
  *ads_r= ads;
  return 0;
}
