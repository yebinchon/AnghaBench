
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int FALSE ;
 int SleepEx (int ,int ) ;
 scalar_t__ _getch () ;
 scalar_t__ _kbhit () ;
 int pc_keymap (int) ;

__attribute__((used)) static int
gl_getcx(int tlen)
{
 int i, c;

 c = (-2);
 tlen -= 2;
 if (tlen < 1)
  tlen = 1;
 for (i=0; i<tlen; i++) {
  if (_kbhit()) {
   c = (int) _getch();
   if ((c == 0) || (c == 0xE0)) {

    c = (int) _getch();
    c = pc_keymap(c);
    break;
   }
  }
  (void) SleepEx((DWORD) (tlen * 100), FALSE);
 }
 return (c);
}
