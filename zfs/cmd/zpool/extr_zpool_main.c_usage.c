
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int usage; int * name; } ;
struct TYPE_3__ {int name; int usage; } ;
typedef int FILE ;


 int B_FALSE ;
 int B_TRUE ;
 int NCOMMAND ;
 int ZFS_TYPE_POOL ;
 int abort () ;
 TYPE_2__* command_table ;
 TYPE_1__* current_command ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 char* get_usage (int ) ;
 int * getenv (char*) ;
 char* gettext (char*) ;
 int print_prop_cb ;
 int printf (char*) ;
 int * stderr ;
 int * stdout ;
 scalar_t__ strcmp (int ,char*) ;
 int zprop_iter (int ,int *,int ,int ,int ) ;

void
usage(boolean_t requested)
{
 FILE *fp = requested ? stdout : stderr;

 if (current_command == ((void*)0)) {
  int i;

  (void) fprintf(fp, gettext("usage: zpool command args ...\n"));
  (void) fprintf(fp,
      gettext("where 'command' is one of the following:\n\n"));

  for (i = 0; i < NCOMMAND; i++) {
   if (command_table[i].name == ((void*)0))
    (void) fprintf(fp, "\n");
   else
    (void) fprintf(fp, "%s",
        get_usage(command_table[i].usage));
  }
 } else {
  (void) fprintf(fp, gettext("usage:\n"));
  (void) fprintf(fp, "%s", get_usage(current_command->usage));
 }

 if (current_command != ((void*)0) &&
     ((strcmp(current_command->name, "set") == 0) ||
     (strcmp(current_command->name, "get") == 0) ||
     (strcmp(current_command->name, "list") == 0))) {

  (void) fprintf(fp,
      gettext("\nthe following properties are supported:\n"));

  (void) fprintf(fp, "\n\t%-19s  %s   %s\n\n",
      "PROPERTY", "EDIT", "VALUES");


  (void) zprop_iter(print_prop_cb, fp, B_FALSE, B_TRUE,
      ZFS_TYPE_POOL);

  (void) fprintf(fp, "\t%-19s   ", "feature@...");
  (void) fprintf(fp, "YES   disabled | enabled | active\n");

  (void) fprintf(fp, gettext("\nThe feature@ properties must be "
      "appended with a feature name.\nSee zpool-features(5).\n"));
 }




 if (getenv("ZFS_ABORT") != ((void*)0)) {
  (void) printf("dumping core by request\n");
  abort();
 }

 exit(requested ? 0 : 2);
}
