
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_state ;


 int configparseerr (int ,char const*,int,char*) ;
 int readconfig (int ,char const*,int) ;

__attribute__((used)) static void ccf_include(adns_state ads, const char *fn, int lno, const char *buf) {
  if (!*buf) {
    configparseerr(ads,fn,lno,"`include' directive with no filename");
    return;
  }
  readconfig(ads,buf,1);
}
