
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_group {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
session_group_cmp(struct session_group *s1, struct session_group *s2)
{
 return (strcmp(s1->name, s2->name));
}
