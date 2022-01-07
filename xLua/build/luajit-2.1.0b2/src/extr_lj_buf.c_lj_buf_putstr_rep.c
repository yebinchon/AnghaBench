
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef char uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef int SBuf ;
typedef scalar_t__ MSize ;
typedef TYPE_1__ GCstr ;


 scalar_t__ LJ_MAX_STR ;
 scalar_t__ LJ_UNLIKELY (int) ;
 char* lj_buf_more (int *,scalar_t__) ;
 int lj_err_mem (int ) ;
 int sbufL (int *) ;
 int setsbufP (int *,char*) ;
 char* strdata (TYPE_1__*) ;

SBuf *lj_buf_putstr_rep(SBuf *sb, GCstr *s, int32_t rep)
{
  MSize len = s->len;
  if (rep > 0 && len) {
    uint64_t tlen = (uint64_t)rep * len;
    char *p;
    if (LJ_UNLIKELY(tlen > LJ_MAX_STR))
      lj_err_mem(sbufL(sb));
    p = lj_buf_more(sb, (MSize)tlen);
    if (len == 1) {
      uint32_t c = strdata(s)[0];
      do { *p++ = c; } while (--rep > 0);
    } else {
      const char *e = strdata(s) + len;
      do {
 const char *q = strdata(s);
 do { *p++ = *q++; } while (q < e);
      } while (--rep > 0);
    }
    setsbufP(sb, p);
  }
  return sb;
}
