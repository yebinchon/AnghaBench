
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sinfo {char const* abbrev; } ;
typedef int adns_status ;


 struct sinfo* findsinfo (int ) ;

const char *adns_errabbrev(adns_status st) {
  const struct sinfo *si;

  si= findsinfo(st);
  return si->abbrev;
}
