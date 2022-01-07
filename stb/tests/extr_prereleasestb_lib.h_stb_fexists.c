
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct stb__stat {int dummy; } ;


 int _wstat (int const*,struct stb__stat*) ;
 int stat (char*,struct stb__stat*) ;
 scalar_t__ stb__from_utf8 (char*) ;
 scalar_t__ stb__windows (int ,int ) ;

int stb_fexists(char *filename)
{
   struct stb__stat buf;
   return stb__windows(
             _wstat((const wchar_t *)stb__from_utf8(filename), &buf),
               stat(filename,&buf)
          ) == 0;
}
