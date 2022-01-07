
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_group {char const* name; } ;


 struct session_group* RB_FIND (int ,int *,struct session_group*) ;
 int session_groups ;

struct session_group *
session_group_find(const char *name)
{
 struct session_group sg;

 sg.name = name;
 return (RB_FIND(session_groups, &session_groups, &sg));
}
