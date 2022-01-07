
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMKeyFlags ;
typedef int MMKeyCode ;


 int MOD_ALT ;
 int MOD_CONTROL ;
 int MOD_SHIFT ;
 scalar_t__ isupper (char) ;
 int keyCodeForChar (char) ;
 int toggleKeyCode (int,int const,int) ;

void toggleKey(char c, const bool down, MMKeyFlags flags)
{
 MMKeyCode keyCode = keyCodeForChar(c);






 if (isupper(c) && !(flags & MOD_SHIFT)) {
  flags |= MOD_SHIFT;
 }
 toggleKeyCode(keyCode, down, flags);
}
