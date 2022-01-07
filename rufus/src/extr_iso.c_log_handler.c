
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cdio_log_level_t ;



 int uprintf (char*,char const*) ;

__attribute__((used)) static void log_handler (cdio_log_level_t level, const char *message)
{
 switch(level) {
 case 128:

  return;
 default:
  uprintf("libcdio: %s\n", message);
 }
}
