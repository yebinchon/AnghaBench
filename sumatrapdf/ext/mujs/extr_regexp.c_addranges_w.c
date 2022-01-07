
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {int dummy; } ;


 int addrange (struct cstate*,char,char) ;

__attribute__((used)) static void addranges_w(struct cstate *g)
{
 addrange(g, '0', '9');
 addrange(g, 'A', 'Z');
 addrange(g, '_', '_');
 addrange(g, 'a', 'z');
}
