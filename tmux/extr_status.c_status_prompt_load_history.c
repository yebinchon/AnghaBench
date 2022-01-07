
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int log_debug (char*,char*,...) ;
 int memcpy (char*,char*,size_t) ;
 int status_prompt_add_history (char*) ;
 char* status_prompt_find_history_file () ;
 int strerror (int ) ;
 char* xmalloc (size_t) ;

void
status_prompt_load_history(void)
{
 FILE *f;
 char *history_file, *line, *tmp;
 size_t length;

 if ((history_file = status_prompt_find_history_file()) == ((void*)0))
  return;
 log_debug("loading history from %s", history_file);

 f = fopen(history_file, "r");
 if (f == ((void*)0)) {
  log_debug("%s: %s", history_file, strerror(errno));
  free(history_file);
  return;
 }
 free(history_file);

 for (;;) {
  if ((line = fgetln(f, &length)) == ((void*)0))
   break;

  if (length > 0) {
   if (line[length - 1] == '\n') {
    line[length - 1] = '\0';
    status_prompt_add_history(line);
   } else {
    tmp = xmalloc(length + 1);
    memcpy(tmp, line, length);
    tmp[length] = '\0';
    status_prompt_add_history(tmp);
    free(tmp);
   }
  }
 }
 fclose(f);
}
