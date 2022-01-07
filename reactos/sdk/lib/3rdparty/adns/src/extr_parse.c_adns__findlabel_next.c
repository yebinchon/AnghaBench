
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbyte; int dglen; int max; int* dmend_r; scalar_t__ namelen; int qu; int serv; int ads; scalar_t__ dgram; } ;
typedef TYPE_1__ findlabel_state ;
typedef int adns_status ;


 scalar_t__ DNS_MAXDOMAIN ;
 int GET_B (int,int) ;
 int adns__diag (int ,int ,int ,char*) ;
 int adns_s_answerdomaintoolong ;
 int adns_s_invalidresponse ;
 int adns_s_ok ;
 int adns_s_unknownformat ;

adns_status adns__findlabel_next(findlabel_state *fls,
     int *lablen_r, int *labstart_r) {
  int lablen, jumpto;
  const char *dgram;

  dgram= (char*)fls->dgram;
  for (;;) {
    if (fls->cbyte >= fls->dglen) goto x_truncated;
    if (fls->cbyte >= fls->max) goto x_badresponse;
    GET_B(fls->cbyte,lablen);
    if (!(lablen & 0x0c0)) break;
    if ((lablen & 0x0c0) != 0x0c0) return adns_s_unknownformat;
    if (fls->cbyte >= fls->dglen) goto x_truncated;
    if (fls->cbyte >= fls->max) goto x_badresponse;
    GET_B(fls->cbyte,jumpto);
    jumpto |= (lablen&0x3f)<<8;
    if (fls->dmend_r) *(fls->dmend_r)= fls->cbyte;
    fls->cbyte= jumpto;
    fls->dmend_r= 0; fls->max= fls->dglen+1;
  }
  if (labstart_r) *labstart_r= fls->cbyte;
  if (lablen) {
    if (fls->namelen) fls->namelen++;
    fls->namelen+= lablen;
    if (fls->namelen > DNS_MAXDOMAIN) return adns_s_answerdomaintoolong;
    fls->cbyte+= lablen;
    if (fls->cbyte > fls->dglen) goto x_truncated;
    if (fls->cbyte > fls->max) goto x_badresponse;
  } else {
    if (fls->dmend_r) *(fls->dmend_r)= fls->cbyte;
  }
  *lablen_r= lablen;
  return adns_s_ok;

 x_truncated:
  *lablen_r= -1;
  return adns_s_ok;

 x_badresponse:
  adns__diag(fls->ads,fls->serv,fls->qu,"label in domain runs beyond end of domain");
  return adns_s_invalidresponse;
}
