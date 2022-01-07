
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ_entry {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
environ_cmp(struct environ_entry *envent1, struct environ_entry *envent2)
{
 return (strcmp(envent1->name, envent2->name));
}
