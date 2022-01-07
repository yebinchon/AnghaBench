
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int exit (int) ;
 int fflush (int ) ;
 int getchar () ;
 int printf (char*,...) ;
 int stdout ;
 int strchr (char const*,int) ;

char get_key(const char *valid, const char *prompt)
{

    int ch, okay;

    while (1) {
 if (prompt)
     printf("%s ", prompt);
 fflush(stdout);
 while (ch = getchar(), ch == ' ' || ch == '\t') ;
 if (ch == EOF)
     exit(1);
 if (!strchr(valid, okay = ch))
     okay = 0;
 while (ch = getchar(), ch != '\n' && ch != EOF) ;
 if (ch == EOF)
     exit(1);
 if (okay)
     return okay;
 printf("Invalid input.\n");
    }



}
