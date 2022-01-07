
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {int dummy; } ;


 int addrange (struct cstate*,char,int) ;

__attribute__((used)) static void addranges_W(struct cstate *g)
{
 addrange(g, 0, '0'-1);
 addrange(g, '9'+1, 'A'-1);
 addrange(g, 'Z'+1, '_'-1);
 addrange(g, '_'+1, 'a'-1);
 addrange(g, 'z'+1, 0xFFFF);
}
