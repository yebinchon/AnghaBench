
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* first; } ;
struct TYPE_4__ {char* line; struct TYPE_4__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__* LineListPtr ;


 scalar_t__ ISTRNCMP (char*,char*,int) ;
 int printf (char*,char*) ;

void
PrintResp(LineListPtr llp)
{
 LinePtr lp;

 if (llp != ((void*)0)) {
  for (lp = llp->first; lp != ((void*)0); lp = lp->next) {
   if ((lp == llp->first) && (ISTRNCMP(lp->line, "CWD command", 11) == 0))
    continue;
   (void) printf("%s\n", lp->line);
  }
 }
}
