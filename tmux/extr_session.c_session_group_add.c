
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_group {int sessions; } ;
struct session {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct session*,int ) ;
 int gentry ;
 int * session_group_contains (struct session*) ;

void
session_group_add(struct session_group *sg, struct session *s)
{
 if (session_group_contains(s) == ((void*)0))
  TAILQ_INSERT_TAIL(&sg->sessions, s, gentry);
}
