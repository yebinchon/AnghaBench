
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_entry {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
options_cmp(struct options_entry *lhs, struct options_entry *rhs)
{
 return (strcmp(lhs->name, rhs->name));
}
