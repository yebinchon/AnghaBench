
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_5__ {void* loc; } ;


 int PATH_MAX ;
 void* currentpage ;
 int filename ;
 TYPE_1__* future ;
 int future_count ;
 int fz_clampi (int ,int ,int ) ;
 TYPE_1__* history ;
 int history_count ;
 int js_freestate (int *) ;
 int js_getindex (int *,int,int) ;
 int js_getlength (int *,int) ;
 scalar_t__ js_hasproperty (int *,int,char*) ;
 scalar_t__ js_isarray (int *,int) ;
 int * js_newstate (int *,int *,int ) ;
 int js_pop (int *,int) ;
 TYPE_1__* marks ;
 int nelem (TYPE_1__*) ;
 int read_history_file_as_json (int *) ;
 int realpath (int ,char*) ;
 void* try_location (int *) ;

__attribute__((used)) static void load_history(void)
{
 js_State *J;
 char absname[PATH_MAX];
 int i, n;

 if (!realpath(filename, absname))
  return;

 J = js_newstate(((void*)0), ((void*)0), 0);

 read_history_file_as_json(J);

 if (js_hasproperty(J, -1, absname))
 {
  if (js_hasproperty(J, -1, "current"))
  {
   currentpage = try_location(J);
   js_pop(J, 1);
  }

  if (js_hasproperty(J, -1, "history"))
  {
   if (js_isarray(J, -1))
   {
    history_count = fz_clampi(js_getlength(J, -1), 0, nelem(history));
    for (i = 0; i < history_count; ++i)
    {
     js_getindex(J, -1, i);
     history[i].loc = try_location(J);
     js_pop(J, 1);
    }
   }
   js_pop(J, 1);
  }

  if (js_hasproperty(J, -1, "future"))
  {
   if (js_isarray(J, -1))
   {
    future_count = fz_clampi(js_getlength(J, -1), 0, nelem(future));
    for (i = 0; i < future_count; ++i)
    {
     js_getindex(J, -1, i);
     future[i].loc = try_location(J);
     js_pop(J, 1);
    }
   }
   js_pop(J, 1);
  }

  if (js_hasproperty(J, -1, "marks"))
  {
   if (js_isarray(J, -1))
   {
    n = fz_clampi(js_getlength(J, -1), 0, nelem(marks));
    for (i = 0; i < n; ++i)
    {
     js_getindex(J, -1, i);
     marks[i].loc = try_location(J);
     js_pop(J, 1);
    }
   }
   js_pop(J, 1);
  }
 }

 js_freestate(J);
}
