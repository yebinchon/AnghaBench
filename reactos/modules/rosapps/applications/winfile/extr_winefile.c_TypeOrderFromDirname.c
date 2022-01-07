
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;


 int TO_DOT ;
 int TO_DOTDOT ;
 int TO_OTHER_DIR ;

__attribute__((used)) static int TypeOrderFromDirname(LPCWSTR name)
{
 if (name[0] == '.') {
  if (name[1] == '\0')
   return TO_DOT;

  if (name[1]=='.' && name[2]=='\0')
   return TO_DOTDOT;
 }

 return TO_OTHER_DIR;
}
