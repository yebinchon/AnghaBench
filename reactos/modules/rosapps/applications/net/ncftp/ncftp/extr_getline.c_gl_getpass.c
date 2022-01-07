
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsize ;
typedef int DWORD ;


 int FlushConsoleInputBuffer (int ) ;
 int GetStdHandle (int ) ;
 int STD_INPUT_HANDLE ;
 int Sleep (int) ;
 int ZeroMemory (char* const,int ) ;
 int _cputs (char const* const) ;
 scalar_t__ _getch () ;
 int _putch (char) ;
 int gl_cleanup () ;
 int gl_getc () ;
 int gl_init () ;
 int gl_putc (char) ;
 int gl_puts (char const* const) ;
 int memset (char* const,int ,size_t) ;

char *gl_getpass(const char *const prompt, char *const pass, int dsize)
{

 char *cp;
 int c;

 memset(pass, 0, (size_t) sizeof(dsize));
 dsize--;
 gl_init();


 if ((prompt != ((void*)0)) && (prompt[0] != '\0'))
  gl_puts(prompt);

 cp = pass;
 while ((c = gl_getc()) != (-1)) {
  if ((c == '\r') || (c == '\n'))
   break;
  if ((c == '\010') || (c == '\177')) {

   if (cp > pass) {
    *--cp = '\0';
    gl_putc('\010');
    gl_putc(' ');
    gl_putc('\010');
   }
  } else if (cp < (pass + dsize)) {
   gl_putc('*');
   *cp++ = c;
  }
 }
 *cp = '\0';
 gl_putc('\n');
 gl_cleanup();
 return (pass);
}
