
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_group {int sessions; int name; } ;


 int RB_INSERT (int ,int *,struct session_group*) ;
 int TAILQ_INIT (int *) ;
 struct session_group* session_group_find (char const*) ;
 int session_groups ;
 struct session_group* xcalloc (int,int) ;
 int xstrdup (char const*) ;

struct session_group *
session_group_new(const char *name)
{
 struct session_group *sg;

 if ((sg = session_group_find(name)) != ((void*)0))
  return (sg);

 sg = xcalloc(1, sizeof *sg);
 sg->name = xstrdup(name);
 TAILQ_INIT(&sg->sessions);

 RB_INSERT(session_groups, &session_groups, sg);
 return (sg);
}
