
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int MNT_LINE_MAX ;
 int fprintf (int ,char*,char*,int) ;
 char* gettext (char*) ;
 int stderr ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int usage (int ) ;

__attribute__((used)) static void
append_options(char *mntopts, char *newopts)
{
 int len = strlen(mntopts);


 if (len + 1 + strlen(newopts) >= MNT_LINE_MAX) {
  (void) fprintf(stderr, gettext("the opts argument for "
      "'%s' option is too long (more than %d chars)\n"),
      "-o", MNT_LINE_MAX);
  usage(B_FALSE);
 }

 if (*mntopts)
  mntopts[len++] = ',';

 (void) strcpy(&mntopts[len], newopts);
}
