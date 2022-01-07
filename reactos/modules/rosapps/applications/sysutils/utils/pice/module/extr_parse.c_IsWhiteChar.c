
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t USHORT ;
typedef char* LPSTR ;
typedef int BOOLEAN ;


 int FALSE ;
 size_t PICE_strlen (char*) ;
 int TRUE ;

BOOLEAN IsWhiteChar(char c,LPSTR WhiteChars)
{
 USHORT lenWhiteChar = PICE_strlen(WhiteChars);
 USHORT i;
 for(i=0;i<lenWhiteChar;i++)
 {
  if(c == WhiteChars[i])
   return TRUE;
 }
 return FALSE;
}
