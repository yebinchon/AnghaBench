
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
typedef int SFormat ;
typedef int SBuf ;
typedef scalar_t__ MSize ;
typedef TYPE_1__ GCstr ;


 int STRFMT_F_LEFT ;
 scalar_t__ STRFMT_PREC (int) ;
 scalar_t__ STRFMT_WIDTH (int) ;
 char* lj_buf_more (int *,scalar_t__) ;
 char* lj_buf_wmem (char*,int ,scalar_t__) ;
 int setsbufP (int *,char*) ;
 int strdata (TYPE_1__*) ;

SBuf *lj_strfmt_putfstr(SBuf *sb, SFormat sf, GCstr *str)
{
  MSize len = str->len <= STRFMT_PREC(sf) ? str->len : STRFMT_PREC(sf);
  MSize width = STRFMT_WIDTH(sf);
  char *p = lj_buf_more(sb, width > len ? width : len);
  if ((sf & STRFMT_F_LEFT)) p = lj_buf_wmem(p, strdata(str), len);
  while (width-- > len) *p++ = ' ';
  if (!(sf & STRFMT_F_LEFT)) p = lj_buf_wmem(p, strdata(str), len);
  setsbufP(sb, p);
  return sb;
}
