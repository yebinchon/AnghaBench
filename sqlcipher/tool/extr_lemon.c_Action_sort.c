
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct action {int next; } ;


 scalar_t__ actioncmp ;
 scalar_t__ msort (char*,char**,int (*) (char const*,char const*)) ;

__attribute__((used)) static struct action *Action_sort(
  struct action *ap
){
  ap = (struct action *)msort((char *)ap,(char **)&ap->next,
                              (int(*)(const char*,const char*))actioncmp);
  return ap;
}
