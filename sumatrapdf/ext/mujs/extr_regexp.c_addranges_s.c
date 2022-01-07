
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {int dummy; } ;


 int addrange (struct cstate*,int,int) ;

__attribute__((used)) static void addranges_s(struct cstate *g)
{
 addrange(g, 0x9, 0xD);
 addrange(g, 0x20, 0x20);
 addrange(g, 0xA0, 0xA0);
 addrange(g, 0x2028, 0x2029);
 addrange(g, 0xFEFF, 0xFEFF);
}
