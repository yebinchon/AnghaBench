
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fputc (char,int *) ;
 int fputs (int ,int *) ;
 int free (char*) ;
 int log_debug (char*,char*,...) ;
 char* status_prompt_find_history_file () ;
 int * status_prompt_hlist ;
 size_t status_prompt_hsize ;
 int strerror (int ) ;

void
status_prompt_save_history(void)
{
 FILE *f;
 u_int i;
 char *history_file;

 if ((history_file = status_prompt_find_history_file()) == ((void*)0))
  return;
 log_debug("saving history to %s", history_file);

 f = fopen(history_file, "w");
 if (f == ((void*)0)) {
  log_debug("%s: %s", history_file, strerror(errno));
  free(history_file);
  return;
 }
 free(history_file);

 for (i = 0; i < status_prompt_hsize; i++) {
  fputs(status_prompt_hlist[i], f);
  fputc('\n', f);
 }
 fclose(f);

}
