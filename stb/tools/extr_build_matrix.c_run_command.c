
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ system (char*) ;

int run_command(char *batch_file, char *command)
{
   char buffer[4096];
   if (batch_file[0]) {
      sprintf(buffer, "%s && %s", batch_file, command);
      return system(buffer) == 0;
   } else {
      return system(command) == 0;
   }
}
