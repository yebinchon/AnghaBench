
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROMPT_HISTORY ;
 int free (int ) ;
 int memmove (int *,int *,size_t) ;
 int * status_prompt_hlist ;
 int status_prompt_hsize ;
 scalar_t__ strcmp (int ,char const*) ;
 int * xreallocarray (int *,int,int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void
status_prompt_add_history(const char *line)
{
 size_t size;

 if (status_prompt_hsize > 0 &&
     strcmp(status_prompt_hlist[status_prompt_hsize - 1], line) == 0)
  return;

 if (status_prompt_hsize == PROMPT_HISTORY) {
  free(status_prompt_hlist[0]);

  size = (PROMPT_HISTORY - 1) * sizeof *status_prompt_hlist;
  memmove(&status_prompt_hlist[0], &status_prompt_hlist[1], size);

  status_prompt_hlist[status_prompt_hsize - 1] = xstrdup(line);
  return;
 }

 status_prompt_hlist = xreallocarray(status_prompt_hlist,
     status_prompt_hsize + 1, sizeof *status_prompt_hlist);
 status_prompt_hlist[status_prompt_hsize++] = xstrdup(line);
}
