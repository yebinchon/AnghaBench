
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {char const* error; int kaboom; } ;


 int longjmp (int ,int) ;

__attribute__((used)) static void die(struct cstate *g, const char *message)
{
 g->error = message;
 longjmp(g->kaboom, 1);
}
