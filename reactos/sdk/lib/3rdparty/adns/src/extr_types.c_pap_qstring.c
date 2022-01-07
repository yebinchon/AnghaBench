
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qu; int * dgram; } ;
typedef TYPE_1__ parseinfo ;
typedef int byte ;
typedef int adns_status ;


 int GET_B (int,int) ;
 int R_NOMEM ;
 char* adns__alloc_interim (int ,size_t) ;
 int adns_s_invaliddata ;
 int adns_s_ok ;
 int memcpy (char*,int const*,size_t) ;

__attribute__((used)) static adns_status pap_qstring(const parseinfo *pai, int *cbyte_io, int max,
         int *len_r, char **str_r) {



  const byte *dgram= pai->dgram;
  int l, cbyte;
  char *str;

  cbyte= *cbyte_io;

  if (cbyte >= max) return adns_s_invaliddata;
  GET_B(cbyte,l);
  if (cbyte+l > max) return adns_s_invaliddata;

  str= adns__alloc_interim(pai->qu, (size_t)l+1);
  if (!str) R_NOMEM;

  str[l]= 0;
  memcpy(str,dgram+cbyte,(size_t)l);

  *len_r= l;
  *str_r= str;
  *cbyte_io= cbyte+l;

  return adns_s_ok;
}
