
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;


 int je_mallctl (char const*,int*,size_t*,int*,int) ;
 int skynet_error (int *,char*,int,char const*,...) ;

int
mallctl_opt(const char* name, int* newval) {
 int v = 0;
 size_t len = sizeof(v);
 if(newval) {
  int ret = je_mallctl(name, &v, &len, newval, sizeof(int));
  if(ret == 0) {
   skynet_error(((void*)0), "set new value(%d) for (%s) succeed\n", *newval, name);
  } else {
   skynet_error(((void*)0), "set new value(%d) for (%s) failed: error -> %d\n", *newval, name, ret);
  }
 } else {
  je_mallctl(name, &v, &len, ((void*)0), 0);
 }

 return v;
}
