
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef int cTValue ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {scalar_t__ len; } ;
typedef int SBuf ;
typedef scalar_t__ MSize ;
typedef int GCtab ;
typedef TYPE_1__ GCstr ;


 int STRFMT_G14 ;
 scalar_t__ STRFMT_MAXBUF_INT ;
 int intV (int *) ;
 char* lj_buf_more (int *,scalar_t__) ;
 char* lj_buf_wmem (char*,int ,scalar_t__) ;
 int * lj_strfmt_putfnum (int *,int ,int ) ;
 char* lj_strfmt_wint (char*,int ) ;
 int * lj_tab_getint (int *,scalar_t__) ;
 int numV (int *) ;
 int setsbufP (int *,char*) ;
 TYPE_3__* strV (int *) ;
 int strVdata (int *) ;
 int strdata (TYPE_1__*) ;
 scalar_t__ tvisint (int *) ;
 scalar_t__ tvisnum (int *) ;
 scalar_t__ tvisstr (int *) ;

SBuf *lj_buf_puttab(SBuf *sb, GCtab *t, GCstr *sep, int32_t i, int32_t e)
{
  MSize seplen = sep ? sep->len : 0;
  if (i <= e) {
    for (;;) {
      cTValue *o = lj_tab_getint(t, i);
      char *p;
      if (!o) {
      badtype:
 setsbufP(sb, (void *)(intptr_t)i);
 return ((void*)0);
      } else if (tvisstr(o)) {
 MSize len = strV(o)->len;
 p = lj_buf_wmem(lj_buf_more(sb, len + seplen), strVdata(o), len);
      } else if (tvisint(o)) {
 p = lj_strfmt_wint(lj_buf_more(sb, STRFMT_MAXBUF_INT+seplen), intV(o));
      } else if (tvisnum(o)) {
 p = lj_buf_more(lj_strfmt_putfnum(sb, STRFMT_G14, numV(o)), seplen);
      } else {
 goto badtype;
      }
      if (i++ == e) {
 setsbufP(sb, p);
 break;
      }
      if (seplen) p = lj_buf_wmem(p, strdata(sep), seplen);
      setsbufP(sb, p);
    }
  }
  return sb;
}
