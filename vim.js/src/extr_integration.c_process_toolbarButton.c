
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOCATGETS (char*) ;
 int strcmp (char*,int ) ;
 char* strtok (char*,int ) ;
 int workshop_toolbar_button (char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void
process_toolbarButton(
 char *cmd)
{
 char *label = strtok(&cmd[14], NOCATGETS("\001"));
 char *verb = strtok(((void*)0), NOCATGETS("\001"));
 char *senseVerb = strtok(((void*)0), NOCATGETS("\001"));
 char *filepos = strtok(((void*)0), NOCATGETS("\001"));
 char *help = strtok(((void*)0), NOCATGETS("\001"));
 char *sense = strtok(((void*)0), NOCATGETS("\001"));
 char *file = strtok(((void*)0), NOCATGETS("\001"));
 char *left = strtok(((void*)0), NOCATGETS("\n"));

 if (!strcmp(label, NOCATGETS("-"))) {
  label = ((void*)0);
 }
 if (!strcmp(help, NOCATGETS("-"))) {
  help = ((void*)0);
 }
 if (!strcmp(file, NOCATGETS("-"))) {
  file = ((void*)0);
 }
 if (!strcmp(senseVerb, NOCATGETS("-"))) {
  senseVerb = ((void*)0);
 }
 workshop_toolbar_button(label, verb, senseVerb, filepos, help,
    sense, file, left);
}
