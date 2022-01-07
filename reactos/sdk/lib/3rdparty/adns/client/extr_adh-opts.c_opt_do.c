
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {int type; int* storep; int value; int (* func ) (struct optioninfo const*,char const*,char const*) ;} ;


 int abort () ;
 int assert (int) ;
 int noninvert (struct optioninfo const*) ;





 int stub1 (struct optioninfo const*,char const*,char const*) ;

void opt_do(const struct optioninfo *oip, int invert,
     const char *arg, const char *arg2) {
  switch (oip->type) {
  case 132:
    assert(!arg);
    *oip->storep= !invert;
    return;
  case 128:
    assert(!arg);
    if (invert) noninvert(oip);
    *oip->storep= oip->value;
    return;
  case 131: case 130: case 129:
    if (invert) noninvert(oip);
    oip->func(oip,arg,arg2);
    return;
  default:
    abort();
  }
}
