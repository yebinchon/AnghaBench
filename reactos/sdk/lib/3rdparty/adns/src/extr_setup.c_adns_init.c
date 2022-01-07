
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* adns_state ;
typedef int adns_initflags ;
struct TYPE_13__ {scalar_t__ configerrno; } ;
typedef int FILE ;


 scalar_t__ EINVAL ;
 int GetWindowsDirectory (char*,int ) ;
 int MAX_PATH ;
 int SECURE_PATH_LEN ;
 int adns__consistency (TYPE_1__*,int ,int ) ;
 int cc_entex ;
 int ccf_options (TYPE_1__*,char*,int,char const*) ;
 int ccf_search (TYPE_1__*,char*,int,char*) ;
 int init_abort (TYPE_1__*) ;
 int init_begin (TYPE_1__**,int ,int *) ;
 int init_finish (TYPE_1__*) ;
 char* instrum_getenv (TYPE_1__*,char*) ;
 int readconfig (TYPE_1__*,char*,int) ;
 int readconfigenv (TYPE_1__*,char*) ;
 int readconfigenvtext (TYPE_1__*,char*) ;
 int * stderr ;
 int strcat (char*,char*) ;

int adns_init(adns_state *ads_r, adns_initflags flags, FILE *diagfile) {
  adns_state ads;
  const char *res_options, *adns_res_options;
  int r;





  r= init_begin(&ads, flags, diagfile ? diagfile : stderr);
  if (r) return r;

  res_options= instrum_getenv(ads,"RES_OPTIONS");
  adns_res_options= instrum_getenv(ads,"ADNS_RES_OPTIONS");
  ccf_options(ads,"RES_OPTIONS",-1,res_options);
  ccf_options(ads,"ADNS_RES_OPTIONS",-1,adns_res_options);
  readconfig(ads,"/etc/resolv.conf",1);
  readconfig(ads,"/etc/resolv-adns.conf",0);


  readconfigenv(ads,"RES_CONF");
  readconfigenv(ads,"ADNS_RES_CONF");

  readconfigenvtext(ads,"RES_CONF_TEXT");
  readconfigenvtext(ads,"ADNS_RES_CONF_TEXT");

  ccf_options(ads,"RES_OPTIONS",-1,res_options);
  ccf_options(ads,"ADNS_RES_OPTIONS",-1,adns_res_options);

  ccf_search(ads,"LOCALDOMAIN",-1,instrum_getenv(ads,"LOCALDOMAIN"));
  ccf_search(ads,"ADNS_LOCALDOMAIN",-1,instrum_getenv(ads,"ADNS_LOCALDOMAIN"));

  if (ads->configerrno && ads->configerrno != EINVAL) {
    r= ads->configerrno;
    init_abort(ads);
    return r;
  }

  r= init_finish(ads);
  if (r) return r;

  adns__consistency(ads,0,cc_entex);
  *ads_r= ads;
  return 0;
}
