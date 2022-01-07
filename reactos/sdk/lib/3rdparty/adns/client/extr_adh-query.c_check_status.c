
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int statuspoints ;
typedef scalar_t__ const adns_status ;
 int rcode ;

__attribute__((used)) static void check_status(adns_status st) {
  static const adns_status statuspoints[]= {
    128,
    133, 130, 129,
    132, 131
  };

  const adns_status *spp;
  int minrcode;

  for (minrcode=0, spp=statuspoints;
       spp < statuspoints + (sizeof(statuspoints)/sizeof(statuspoints[0]));
       spp++)
    if (st > *spp) minrcode++;
  if (rcode < minrcode) rcode= minrcode;
}
