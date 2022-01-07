
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetCommandLine () ;
 char* _acmdln ;
 int _getch () ;
 scalar_t__ _kbhit () ;
 char* _oscmd ;
 int perror (char*) ;
 int printf (char*,int) ;
 int puts (char const*) ;
 int system (char const*) ;

int
main(void)
{
    const char *p;
    int retval;
    int inquote = 0;
    int silent = 0;







    p = _acmdln;





    while (*p)
    {
 if (*p == '"')
     inquote = !inquote;
 else if (!inquote && *p == ' ')
 {
     ++p;
     break;
 }
 ++p;
    }




    if (p[0] == '-' && p[1] == 's' && p[2] == ' ')
    {
 silent = 1;
 p += 3;
 while (*p == ' ')
     ++p;
    }


    puts(p);




    retval = system(p);

    if (retval == -1)
 perror("vimrun system(): ");
    else if (retval != 0)
 printf("shell returned %d\n", retval);

    if (!silent)
    {
 puts("Hit any key to close this window...");


 while (_kbhit())
     (void)_getch();

 (void)_getch();
    }

    return retval;
}
