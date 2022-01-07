
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adns_finish (scalar_t__) ;
 scalar_t__ ads ;
 int exit (int) ;
 int free (int ) ;
 int mcs ;
 int types_a ;

__attribute__((used)) static void quitnow(int rc) {
  free(mcs);
  free(types_a);
  if (ads) adns_finish(ads);

  exit(rc);
}
