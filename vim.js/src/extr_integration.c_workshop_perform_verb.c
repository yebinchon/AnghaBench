
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MAXPATHLEN ;
 char* NOCATGETS (char*) ;
 int dummy ;
 int free (char*) ;
 scalar_t__ save_files ;
 int sd ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int vim_snprintf (char*,int,char*,char*,char*,int,int,int,int,int,int,int,char*) ;
 scalar_t__ workshop_get_positions (void*,char**,int*,int*,int*,int*,int*,int*,int*,char**) ;
 int workshop_save_files () ;
 int write (int ,char*,int ) ;

void workshop_perform_verb(char *verb, void *clientData)
{
 char *filename;
 int curLine;
 int curCol;
 int selStartLine;
 int selStartCol;
 int selEndLine;
 int selEndCol;
 int selLength;
 char *selection;

 char buf[2*MAXPATHLEN];




 if (workshop_get_positions(clientData,
       &filename,
       &curLine,
       &curCol,
       &selStartLine,
       &selStartCol,
       &selEndLine,
       &selEndCol,
       &selLength,
       &selection)) {
  if (selection == ((void*)0)) {
   selection = NOCATGETS("");
  }





  if (save_files) {
   if (!strcmp(verb, "build.build") || !strcmp(verb, "build.build-file") ||
       !strcmp(verb, "debug.fix") || !strcmp(verb, "debug.fix-all")) {
    workshop_save_files();
   }
  }

  vim_snprintf(buf, sizeof(buf),
   NOCATGETS("toolVerb %s %s %d,%d %d,%d %d,%d %d %s\n"),
   verb,
   filename,
   curLine, curCol,
   selStartLine, selStartCol,
   selEndLine, selEndCol,
   selLength,
   selection);
  dummy = write(sd, buf, strlen(buf));
  if (*selection) {
   free(selection);
  }
 }
}
