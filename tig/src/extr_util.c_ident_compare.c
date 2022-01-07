
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ident {int name; } ;


 int strcmp (int ,int ) ;

int
ident_compare(const struct ident *i1, const struct ident *i2)
{
 if (!i1 || !i2)
  return (!!i1) - (!!i2);
 if (!i1->name || !i2->name)
  return (!!i1->name) - (!!i2->name);
 return strcmp(i1->name, i2->name);
}
