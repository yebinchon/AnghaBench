
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;


 int je_mallctl (char const*,size_t*,size_t*,size_t*,int) ;

size_t
mallctl_int64(const char* name, size_t* newval) {
 size_t v = 0;
 size_t len = sizeof(v);
 if(newval) {
  je_mallctl(name, &v, &len, newval, sizeof(size_t));
 } else {
  je_mallctl(name, &v, &len, ((void*)0), 0);
 }

 return v;
}
