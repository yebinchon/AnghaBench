
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adns_finish (scalar_t__) ;
 scalar_t__ ads ;
 int buf ;
 int exit (int) ;
 int free (int ) ;
 int ov_id ;

void quitnow(int rc) {
  if (ads) adns_finish(ads);
  free(buf);
  free(ov_id);
  exit(rc);
}
