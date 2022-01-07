
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int GCproto ;
typedef int BCReg ;
typedef scalar_t__ BCPos ;


 char* VARNAMEDEF (int ) ;
 int VARNAMESTR ;
 scalar_t__ VARNAME_END ;
 scalar_t__ VARNAME__MAX ;
 scalar_t__ lj_buf_ruleb128 (char const**) ;
 scalar_t__ proto_varinfo (int const*) ;

__attribute__((used)) static const char *debug_varname(const GCproto *pt, BCPos pc, BCReg slot)
{
  const char *p = (const char *)proto_varinfo(pt);
  if (p) {
    BCPos lastpc = 0;
    for (;;) {
      const char *name = p;
      uint32_t vn = *(const uint8_t *)p;
      BCPos startpc, endpc;
      if (vn < VARNAME__MAX) {
 if (vn == VARNAME_END) break;
      } else {
 do { p++; } while (*(const uint8_t *)p);
      }
      p++;
      lastpc = startpc = lastpc + lj_buf_ruleb128(&p);
      if (startpc > pc) break;
      endpc = startpc + lj_buf_ruleb128(&p);
      if (pc < endpc && slot-- == 0) {
 if (vn < VARNAME__MAX) {

   name = VARNAMEDEF(VARNAMESTR);

   if (--vn) while (*name++ || --vn) ;
 }
 return name;
      }
    }
  }
  return ((void*)0);
}
