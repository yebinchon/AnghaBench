
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {int dummy; } ;


 int free (int ) ;
 int ov_id ;
 int xstrsave (char const*) ;

void of_asynch_id(const struct optioninfo *oi, const char *arg, const char *arg2) {
  free(ov_id);
  ov_id= xstrsave(arg);
}
