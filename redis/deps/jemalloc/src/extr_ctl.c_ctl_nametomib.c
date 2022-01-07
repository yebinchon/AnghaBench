
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int EAGAIN ;
 scalar_t__ ctl_init (int *) ;
 int ctl_initialized ;
 int ctl_lookup (int ,char const*,int *,size_t*,size_t*) ;
 int tsd_tsdn (int *) ;

int
ctl_nametomib(tsd_t *tsd, const char *name, size_t *mibp, size_t *miblenp) {
 int ret;

 if (!ctl_initialized && ctl_init(tsd)) {
  ret = EAGAIN;
  goto label_return;
 }

 ret = ctl_lookup(tsd_tsdn(tsd), name, ((void*)0), mibp, miblenp);
label_return:
 return(ret);
}
