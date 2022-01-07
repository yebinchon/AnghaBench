
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {int dummy; } ;


 int die (struct cstate*,char*) ;

__attribute__((used)) static int dec(struct cstate *g, int c)
{
 if (c >= '0' && c <= '9') return c - '0';
 die(g, "invalid quantifier");
 return 0;
}
