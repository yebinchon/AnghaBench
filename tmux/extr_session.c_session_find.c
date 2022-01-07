
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {char* name; } ;


 struct session* RB_FIND (int ,int *,struct session*) ;
 int sessions ;

struct session *
session_find(const char *name)
{
 struct session s;

 s.name = (char *) name;
 return (RB_FIND(sessions, &sessions, &s));
}
