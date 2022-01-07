
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetDateFormatA (int ,int ,int *,char const*,char*,int) ;
 int LOCALE_NEUTRAL ;

char* _strdate(char* date)
{
   static const char format[] = "MM'/'dd'/'yy";

   GetDateFormatA(LOCALE_NEUTRAL, 0, ((void*)0), format, date, 9);

   return date;

}
