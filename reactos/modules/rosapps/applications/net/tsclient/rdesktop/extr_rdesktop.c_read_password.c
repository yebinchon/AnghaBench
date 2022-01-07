
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; } ;
typedef int BOOL ;


 int ECHO ;
 int False ;
 int STDIN_FILENO ;
 int TCSANOW ;
 int True ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int stdin ;
 char* strchr (char*,char) ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static BOOL
read_password(char *password, int size)
{
 struct termios tios;
 BOOL ret = False;
 int istty = 0;
 char *p;

 if (tcgetattr(STDIN_FILENO, &tios) == 0)
 {
  fprintf(stderr, "Password: ");
  tios.c_lflag &= ~ECHO;
  tcsetattr(STDIN_FILENO, TCSANOW, &tios);
  istty = 1;
 }

 if (fgets(password, size, stdin) != ((void*)0))
 {
  ret = True;


  p = strchr(password, '\n');
  if (p != ((void*)0))
   *p = 0;
 }

 if (istty)
 {
  tios.c_lflag |= ECHO;
  tcsetattr(STDIN_FILENO, TCSANOW, &tios);
  fprintf(stderr, "\n");
 }

 return ret;
}
