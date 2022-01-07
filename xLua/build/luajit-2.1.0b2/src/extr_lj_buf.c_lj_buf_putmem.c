
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SBuf ;
typedef int MSize ;


 char* lj_buf_more (int *,int ) ;
 char* lj_buf_wmem (char*,void const*,int ) ;
 int setsbufP (int *,char*) ;

SBuf *lj_buf_putmem(SBuf *sb, const void *q, MSize len)
{
  char *p = lj_buf_more(sb, len);
  p = lj_buf_wmem(p, q, len);
  setsbufP(sb, p);
  return sb;
}
