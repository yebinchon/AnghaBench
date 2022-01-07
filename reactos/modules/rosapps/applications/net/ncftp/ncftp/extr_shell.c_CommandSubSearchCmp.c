
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__* CommandPtr ;



__attribute__((used)) static int
CommandSubSearchCmp(const char *const key, const CommandPtr a)
{
 register const char *kcp, *cp;
 int d;

 for (cp = (*a).name, kcp = key; ; ) {
  if (*kcp == 0)
   break;
  d = *kcp++ - *cp++;
  if (d)
   return d;
 }
 return (0);
}
