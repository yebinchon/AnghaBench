
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* adns_state ;
struct TYPE_5__ {unsigned long searchndots; int iflags; } ;


 unsigned long INT_MAX ;
 int adns__diag (TYPE_1__*,int,int ,char*,char const*,int,int,char const*) ;
 int adns_if_checkc_entex ;
 int adns_if_checkc_freq ;
 int adns_if_debug ;
 int configparseerr (TYPE_1__*,char const*,int,char*,...) ;
 int memcmp (char const*,char*,int) ;
 scalar_t__ nextword (char const**,char const**,int*) ;
 int strcmp (char const*,char*) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static void ccf_options(adns_state ads, const char *fn, int lno, const char *buf) {
  const char *word;
  char *ep;
  unsigned long v;
  int l;

  if (!buf) return;

  while (nextword(&buf,&word,&l)) {
    if (l==5 && !memcmp(word,"debug",5)) {
      ads->iflags |= adns_if_debug;
      continue;
    }
    if (l>=6 && !memcmp(word,"ndots:",6)) {
      v= strtoul(word+6,&ep,10);
      if (l==6 || ep != word+l || v > INT_MAX) {
 configparseerr(ads,fn,lno,"option `%.*s' malformed or has bad value",l,word);
 continue;
      }
      ads->searchndots= v;
      continue;
    }
    if (l>=12 && !memcmp(word,"adns_checkc:",12)) {
      if (!strcmp(word+12,"none")) {
 ads->iflags &= ~adns_if_checkc_freq;
 ads->iflags |= adns_if_checkc_entex;
      } else if (!strcmp(word+12,"entex")) {
 ads->iflags &= ~adns_if_checkc_freq;
 ads->iflags |= adns_if_checkc_entex;
      } else if (!strcmp(word+12,"freq")) {
 ads->iflags |= adns_if_checkc_freq;
      } else {
 configparseerr(ads,fn,lno, "option adns_checkc has bad value `%s' "
         "(must be none, entex or freq", word+12);
      }
      continue;
    }
    adns__diag(ads,-1,0,"%s:%d: unknown option `%.*s'", fn,lno, l,word);
  }
}
