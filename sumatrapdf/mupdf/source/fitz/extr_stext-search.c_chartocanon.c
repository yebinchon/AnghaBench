
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int canon (int) ;
 int fz_chartorune (int*,char const*) ;

__attribute__((used)) static inline int chartocanon(int *c, const char *s)
{
 int n = fz_chartorune(c, s);
 *c = canon(*c);
 return n;
}
