
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct args_entry {int flag; } ;



__attribute__((used)) static int
args_cmp(struct args_entry *a1, struct args_entry *a2)
{
 return (a1->flag - a2->flag);
}
