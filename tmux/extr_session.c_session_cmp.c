
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int name; } ;


 int strcmp (int ,int ) ;

int
session_cmp(struct session *s1, struct session *s2)
{
 return (strcmp(s1->name, s2->name));
}
