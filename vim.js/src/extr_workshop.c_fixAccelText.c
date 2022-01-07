
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__ atoi (char*) ;
 char* strdup (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int vim_snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static char *
fixAccelText(
 char *ap)
{
    char buf[256];
    char *shift;

    if (ap == ((void*)0))
 return ((void*)0);


    if (strncmp("Shift+", ap, 6) == 0)
    {
 shift = "S-";
 ap += 6;
    }
    else
 shift = "";

    if (*ap == 'F' && atoi(&ap[1]) > 0)
    {
 vim_snprintf(buf, sizeof(buf), "<%s%s>", shift, ap);
 return strdup(buf);
    }
    else
 return ((void*)0);
}
