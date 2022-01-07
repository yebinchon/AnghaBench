
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_group {int sessions; } ;
struct session {int dummy; } ;


 int RB_REMOVE (int ,int *,struct session_group*) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct session*,int ) ;
 int free (struct session_group*) ;
 int gentry ;
 struct session_group* session_group_contains (struct session*) ;
 int session_groups ;

__attribute__((used)) static void
session_group_remove(struct session *s)
{
 struct session_group *sg;

 if ((sg = session_group_contains(s)) == ((void*)0))
  return;
 TAILQ_REMOVE(&sg->sessions, s, gentry);
 if (TAILQ_EMPTY(&sg->sessions)) {
  RB_REMOVE(session_groups, &session_groups, sg);
  free(sg);
 }
}
