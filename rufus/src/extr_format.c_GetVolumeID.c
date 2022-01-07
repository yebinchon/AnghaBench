
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int wDay; int wMonth; int wMilliseconds; int wSecond; int wMinute; int wHour; scalar_t__ wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int DWORD ;


 int GetLocalTime (TYPE_1__*) ;

__attribute__((used)) static DWORD GetVolumeID(void)
{
 SYSTEMTIME s;
 DWORD d;
 WORD lo,hi,tmp;

 GetLocalTime(&s);

 lo = s.wDay + (s.wMonth << 8);
 tmp = (s.wMilliseconds/10) + (s.wSecond << 8);
 lo += tmp;

 hi = s.wMinute + (s.wHour << 8);
 hi += s.wYear;

 d = lo + (hi << 16);
 return d;
}
