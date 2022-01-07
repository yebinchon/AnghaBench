
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int strcat (char*,char*) ;
 char* strcpy (char*,char const*) ;
 int strlen (char*) ;
 int vsprintf (char*,char const*,int ) ;

__attribute__((used)) static
void ConsoleErrorHandler(const char* module, const char* fmt, va_list ap)
{
       char e[512] = { '\0' };

       if (module != ((void*)0))
              strcat(strcpy(e, module), ": ");

       vsprintf(e+strlen(e), fmt, ap);
       strcat(e, ".");
       fprintf(stderr, "\nError");
       fprintf(stderr, " %s\n", e);
       fflush(stderr);
}
