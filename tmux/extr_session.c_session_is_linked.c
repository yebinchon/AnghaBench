
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {scalar_t__ references; } ;
struct session_group {int dummy; } ;
struct session {int dummy; } ;


 struct session_group* session_group_contains (struct session*) ;
 scalar_t__ session_group_count (struct session_group*) ;

int
session_is_linked(struct session *s, struct window *w)
{
 struct session_group *sg;

 if ((sg = session_group_contains(s)) != ((void*)0))
  return (w->references != session_group_count(sg));
 return (w->references != 1);
}
