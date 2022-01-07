
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pwbuf ;


 int FGets (char*,int,int ) ;
 int _fileno (int ) ;
 int _getch () ;
 int _isatty (int ) ;
 int fflush (int ) ;
 int fputs (char const* const,int ) ;
 char* getpass (char const* const) ;
 int isatty (int) ;
 int memset (char*,int ,int) ;
 int stdin ;
 int stdout ;

char *
GetPass(const char *const prompt)
{
 static char pwbuf[128];

 (void) memset(pwbuf, 0, sizeof(pwbuf));



 if (! isatty(1))

  return (pwbuf);
 (void) fputs(prompt, stdout);
 (void) fflush(stdout);
 (void) FGets(pwbuf, sizeof(pwbuf), stdin);
 (void) fflush(stdout);
 (void) fflush(stdin);
 return (pwbuf);

}
