
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;



LPSTR TruncateString(LPSTR p,char c)
{
 static char temp[1024];
 LPSTR pTemp;

 pTemp = temp;

 while(*p!=0 && *p!=c)
  *pTemp++ = *p++;

 *pTemp = 0;

 return temp;
}
