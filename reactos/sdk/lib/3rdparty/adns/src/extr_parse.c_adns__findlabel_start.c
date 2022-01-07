
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int serv; int dglen; int max; int cbyte; int* dmend_r; scalar_t__ namelen; int const* dgram; int qu; int ads; } ;
typedef TYPE_1__ findlabel_state ;
typedef int byte ;
typedef int adns_state ;
typedef int adns_query ;



void adns__findlabel_start(findlabel_state *fls, adns_state ads,
      int serv, adns_query qu,
      const byte *dgram, int dglen, int max,
      int dmbegin, int *dmend_rlater) {
  fls->ads= ads;
  fls->qu= qu;
  fls->serv= serv;
  fls->dgram= dgram;
  fls->dglen= dglen;
  fls->max= max;
  fls->cbyte= dmbegin;
  fls->namelen= 0;
  fls->dmend_r= dmend_rlater;
}
