
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetTimeFormatA (int ,int ,int *,char const*,char*,int) ;
 int LOCALE_NEUTRAL ;

char* _strtime(char* time)
{
   static const char format[] = "HH':'mm':'ss";

   GetTimeFormatA(LOCALE_NEUTRAL, 0, ((void*)0), format, time, 9);

   return time;
}
