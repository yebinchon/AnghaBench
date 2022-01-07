
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {int dummy; } ;


 struct optioninfo const* find (char const**,char*,int ) ;
 int oc_long ;

const struct optioninfo *opt_findl(const char *opt) { return find(&opt,"--",oc_long); }
