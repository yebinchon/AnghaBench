
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef scalar_t__* LPSTR ;


 int IsWhiteChar (scalar_t__,scalar_t__*) ;

ULONG StrLenUpToWhiteChar(LPSTR p,LPSTR WhiteChars)
{
    ULONG i;

 for(i=0;p[i]!=0 && !IsWhiteChar(p[i],WhiteChars);i++);

 return i;
}
