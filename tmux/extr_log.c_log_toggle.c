
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_close () ;
 int log_debug (char*) ;
 int log_level ;
 int log_open (char const*) ;

void
log_toggle(const char *name)
{
 if (log_level == 0) {
  log_level = 1;
  log_open(name);
  log_debug("log opened");
 } else {
  log_debug("log closed");
  log_level = 0;
  log_close();
 }
}
