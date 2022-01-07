
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int dummy; } ;


 scalar_t__ RB_EMPTY (int *) ;
 struct session* RB_MIN (int ,int *) ;
 struct session* RB_NEXT (int ,int *,struct session*) ;
 int session_alive (struct session*) ;
 int sessions ;

struct session *
session_next_session(struct session *s)
{
 struct session *s2;

 if (RB_EMPTY(&sessions) || !session_alive(s))
  return (((void*)0));

 s2 = RB_NEXT(sessions, &sessions, s);
 if (s2 == ((void*)0))
  s2 = RB_MIN(sessions, &sessions);
 if (s2 == s)
  return (((void*)0));
 return (s2);
}
