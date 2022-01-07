
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int line ;
struct TYPE_2__ {scalar_t__ visible; int (* proc ) (int,char*,int *) ;int varname; } ;
typedef int (* PrefProc ) (int,char*,int *) ;
typedef int FILE ;


 scalar_t__ ISTREQ (char*,int ) ;
 int * fgets (char*,int,int * const) ;
 int gNumPrefOpts ;
 TYPE_1__* gPrefOpts ;
 int gPrefsDirty ;
 scalar_t__ kPrefOptObselete ;
 char* strtok (char*,char*) ;
 int stub1 (int,char*,int *) ;

void
ProcessPrefsFile(FILE *const fp)
{
 char line[1024];
 char *tok1, *tok2;
 int t;

 line[sizeof(line) - 1] = '\0';
 while (fgets(line, sizeof(line) - 1, fp) != ((void*)0)) {
  tok1 = strtok(line, " =\t\r\n");
  if ((tok1 == ((void*)0)) || (tok1[0] == '#'))
   continue;
  tok2 = strtok(((void*)0), "\r\n");
  if (tok2 == ((void*)0))
   continue;

  for (t=0; t<gNumPrefOpts; t++) {
   if (ISTREQ(tok1, gPrefOpts[t].varname)) {
    if (gPrefOpts[t].visible == kPrefOptObselete) {



     gPrefsDirty++;
    } else if (gPrefOpts[t].proc != (PrefProc) 0) {
     (*gPrefOpts[t].proc)(t, tok2, ((void*)0));
    }
   }
  }
 }
}
