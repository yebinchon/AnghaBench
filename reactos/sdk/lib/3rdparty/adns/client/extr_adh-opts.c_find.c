
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {int dummy; } ;
typedef int comparer_type ;


 scalar_t__ ads ;
 struct optioninfo* find1 (char const**,int ,int *) ;
 int global_options ;
 int perquery_options ;
 int usageerr (char*,char const*,char const*) ;

__attribute__((used)) static const struct optioninfo *find(const char **optp,
         const char *prefix,
         comparer_type *comparer) {
  const struct optioninfo *oip;
  const char *opt;

  opt= *optp;
  oip= find1(optp,perquery_options,comparer);
  if (oip) return oip;
  oip= find1(optp,global_options,comparer);
  if (!oip) usageerr("unknown option %s%s",prefix,opt);
  if (ads) usageerr("global option %s%s specified after query domain(s)",prefix,opt);
  return oip;
}
