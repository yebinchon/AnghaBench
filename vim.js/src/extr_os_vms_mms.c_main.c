
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmd ;
typedef int FILE ;


 int BUFSIZ ;
 int _ (char*) ;
 int delete (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int memcmp (char*,char*,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strstr (char*,int ) ;
 int system (char*) ;
 int vim_snprintf (char*,int,char*,char*,char*) ;

int main(int argc, char *argv[])
{
    FILE *fpi, *fpo;
    char cmd[132], buf[BUFSIZ], *argp, *error_file, target[132], *mms;
    int err = 0, err_line = 0;

    mms = "mms";
    argc--;
    argv++;
    while (argc-- > 0)
    {
 argp = *argv++;
 if (*argp == '-')
 {
     switch (*++argp)
     {
  case 'm':
      mms = ++argp;
      break;
  case 'e':
      if (!*(error_file = ++argp))
      {
   error_file = *argv++;
   argc--;
      }
      break;
  default:
      break;
     }
 }
 else
 {
     if (*target)
  strcat(target, " ");
     strcat(target, argp);
 }
    }
    vim_snprintf(cmd, sizeof(cmd), "%s/output=tmp:errors.vim_tmp %s",
         mms, target);
    system(cmd);
    fpi = fopen("tmp:errors.vim_tmp", "r");
    fpo = fopen(error_file, "w");
    while (fgets(buf, BUFSIZ, fpi))
    {
 if (!memcmp(buf, "%CC-", 4))
 {
     err_line++;
     buf[strlen(buf)-1] = '\0';
     err++;
 }
 else
 {
     if (err_line)
     {
  if (strstr(buf, _("At line")))
  {
      err_line = 0;
      fprintf(fpo, "@");
  }
  else
      buf[strlen(buf)-1] = '\0';
     }
 }
 fprintf(fpo, "%s", buf);
    }
    fclose(fpi);
    fclose(fpo);
    while (!delete("tmp:errors.vim_tmp"))
        ;
    exit(err ? 44 : 1);
    return(0);
}
