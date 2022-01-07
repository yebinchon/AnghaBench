
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {int dummy; } ;


 struct optioninfo const* find (char const**,char*,int ) ;
 int oc_short ;

const struct optioninfo *opt_finds(const char **optp) { return find(optp,"-",oc_short); }
