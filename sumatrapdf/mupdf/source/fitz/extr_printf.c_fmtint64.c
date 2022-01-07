
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct fmtbuf {int dummy; } ;
typedef int int64_t ;


 int fmtuint64 (struct fmtbuf*,int ,int,int,int,int) ;

__attribute__((used)) static void fmtint64(struct fmtbuf *out, int64_t value, int s, int z, int w, int base)
{
 uint64_t a;

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
 fmtuint64(out, a, s, z, w, base);
}
