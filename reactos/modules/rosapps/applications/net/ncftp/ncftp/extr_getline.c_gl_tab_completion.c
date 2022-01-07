
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gl_tab_completion_proc ;


 int * gl_completion_proc ;
 int * gl_local_filename_completion_proc ;

void
gl_tab_completion(gl_tab_completion_proc proc)
{
 if (proc == ((void*)0))
  proc = gl_local_filename_completion_proc;
 gl_completion_proc = proc;
}
