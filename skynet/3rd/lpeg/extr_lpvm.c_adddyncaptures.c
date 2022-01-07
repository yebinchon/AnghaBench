
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int siz; int idx; char const* s; int kind; } ;
typedef TYPE_1__ Capture ;


 int Cclose ;
 int Cgroup ;
 int Cruntime ;

__attribute__((used)) static void adddyncaptures (const char *s, Capture *base, int n, int fd) {
  int i;
  base[0].kind = Cgroup;
  base[0].siz = 0;
  base[0].idx = 0;
  for (i = 1; i <= n; i++) {
    base[i].kind = Cruntime;
    base[i].siz = 1;
    base[i].idx = fd + i - 1;
    base[i].s = s;
  }
  base[i].kind = Cclose;
  base[i].siz = 1;
  base[i].s = s;
}
