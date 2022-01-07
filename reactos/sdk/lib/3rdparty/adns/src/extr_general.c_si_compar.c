
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sinfo {int const st; } ;
typedef int adns_status ;



__attribute__((used)) static int si_compar(const void *key, const void *elem) {
  const adns_status *st= key;
  const struct sinfo *si= elem;

  return *st < si->st ? -1 : *st > si->st ? 1 : 0;
}
