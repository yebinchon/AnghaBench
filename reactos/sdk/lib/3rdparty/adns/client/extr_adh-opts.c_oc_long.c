
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {scalar_t__ lopt; } ;


 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static int oc_long(const char **optp, const struct optioninfo *entry) {
  return entry->lopt && !strcmp(*optp,entry->lopt);
}
