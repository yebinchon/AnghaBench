
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cbuf ;


 int BUFSIZ ;
 char NUL ;
 int TRUE ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int coloncmd (char*,int ) ;
 int sprintf (char*,char*,char*) ;
 int strcmp (char*,char*) ;
 int vim_snprintf (char*,int,char*,char*) ;
 int wsdebug (char*) ;
 int wstrace (char*,char*,char*) ;

void
workshop_set_option(
 char *option,
 char *value)
{
    char cbuf[BUFSIZ];
    cbuf[0] = NUL;
    switch (*option)
    {
 case 's':
     if (strcmp(option, "syntax") == 0)
  vim_snprintf(cbuf, sizeof(cbuf), "syntax %s", value);
     else if (strcmp(option, "savefiles") == 0)
     {

     }
     break;

 case 'l':
     if (strcmp(option, "lineno") == 0)
  sprintf(cbuf, "set %snu",
   (strcmp(value, "on") == 0) ? "" : "no");
     break;

 case 'p':
     if (strcmp(option, "parentheses") == 0)
  sprintf(cbuf, "set %ssm",
   (strcmp(value, "on") == 0) ? "" : "no");
     break;

 case 'w':





     break;

 case 'b':
     if (option[7] == NUL && strcmp(option, "balloon") == 0)
     {





     }
     else if (strcmp(option, "balloondelay") == 0)
     {





     }
     break;
    }
    if (cbuf[0] != NUL)
 coloncmd(cbuf, TRUE);
}
