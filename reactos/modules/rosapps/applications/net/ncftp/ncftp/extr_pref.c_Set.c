
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ visible; char* varname; int (* proc ) (int,char const* const,int *) ;} ;
typedef int (* PrefProc ) (int,char const* const,int *) ;


 scalar_t__ ISTREQ (char const* const,char*) ;
 int Show1 (int) ;
 int gNumPrefOpts ;
 TYPE_1__* gPrefOpts ;
 int gPrefsDirty ;
 scalar_t__ kPrefOptObselete ;
 scalar_t__ kPrefOptVisible ;
 int printf (char*,char const* const) ;
 int stub1 (int,char const* const,int *) ;

void
Set(const char *const tok1, const char *const tok2)
{
 int t;

 if ((tok1 == ((void*)0)) || (ISTREQ(tok1, "all"))) {

  for (t=0; t<gNumPrefOpts; t++) {
   if (gPrefOpts[t].visible == kPrefOptVisible)
    Show1(t);
  }
 } else if (tok2 == ((void*)0)) {

  for (t=0; t<gNumPrefOpts; t++) {
   if (ISTREQ(tok1, gPrefOpts[t].varname)) {
    if (gPrefOpts[t].visible == kPrefOptObselete) {
     (void) printf("The \"%s\" option is obselete or not implemented.\n", tok1);
    } else {
     Show1(t);
    }
    break;
   }
  }
  if (t >= gNumPrefOpts) {
   (void) printf("Unknown option \"%s\" -- try \"show all\" to list available options.\n", tok1);
  }
 } else {

  for (t=0; t<gNumPrefOpts; t++) {
   if (ISTREQ(tok1, gPrefOpts[t].varname)) {
    if (gPrefOpts[t].visible == kPrefOptObselete) {
     (void) printf("The \"%s\" option is obselete or not implemented.\n", tok1);
    } else if (gPrefOpts[t].proc != (PrefProc) 0) {
     (*gPrefOpts[t].proc)(t, tok2, ((void*)0));
     gPrefsDirty++;
    }
    break;
   }
  }
  if (t >= gNumPrefOpts) {
   (void) printf("Unknown option \"%s\" -- try \"show all\" to list available options.\n", tok1);
  }
 }
}
