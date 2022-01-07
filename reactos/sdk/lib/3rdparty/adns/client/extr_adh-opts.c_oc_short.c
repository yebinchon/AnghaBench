
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {char* sopt; } ;


 scalar_t__ memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int oc_short(const char **optp, const struct optioninfo *entry) {
  const char *sopt;
  int l;

  sopt= entry->sopt;
  if (!sopt) return 0;
  l= strlen(sopt);
  if (memcmp(*optp,sopt,l)) return 0;
  (*optp) += l;
  return 1;
}
