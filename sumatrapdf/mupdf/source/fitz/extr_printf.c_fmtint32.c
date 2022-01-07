
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmtbuf {int dummy; } ;


 int fmtuint32 (struct fmtbuf*,unsigned int,int,int,int,int) ;

__attribute__((used)) static void fmtint32(struct fmtbuf *out, int value, int s, int z, int w, int base)
{
 unsigned int a;

 if (value < 0)
 {
  s = '-';
  a = -value;
 }
 else if (s)
 {
  s = '+';
  a = value;
 }
 else
 {
  s = 0;
  a = value;
 }
 fmtuint32(out, a, s, z, w, base);
}
