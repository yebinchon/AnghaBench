
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* p; size_t n; } ;
typedef TYPE_1__ _gostring_ ;


 scalar_t__ _swig_goallocate (size_t) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static _gostring_ _swig_makegostring(const char *p, size_t l) {
  _gostring_ ret;
  ret.p = (char*)_swig_goallocate(l + 1);
  memcpy(ret.p, p, l);
  ret.n = l;
  return ret;
}
