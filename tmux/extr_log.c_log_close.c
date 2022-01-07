
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int event_set_log_callback (int *) ;
 int fclose (int *) ;
 int * log_file ;

void
log_close(void)
{
 if (log_file != ((void*)0))
  fclose(log_file);
 log_file = ((void*)0);

 event_set_log_callback(((void*)0));
}
