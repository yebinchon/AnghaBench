
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_entry {int key; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
format_entry_cmp(struct format_entry *fe1, struct format_entry *fe2)
{
 return (strcmp(fe1->key, fe2->key));
}
