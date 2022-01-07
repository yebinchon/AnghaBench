
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GetCurrentDirectoryA (int,char*) ;
 int GetLastError () ;
 int GetShortPathNameA (char*,char*,int) ;
 int MAX_PATH ;
 int lstrcatA (char*,char const*) ;
 int memcpy (char*,char*,int) ;
 int ok (int,char*,int,char*,...) ;

__attribute__((used)) static void full_file_path_name_in_a_CWD(const char *src, char *dst, BOOL expect_short)
{
  DWORD retval;
  char shortname[MAX_PATH];

  retval = GetCurrentDirectoryA(MAX_PATH, dst);
  ok(retval > 0, "GetCurrentDirectoryA returned %d, GLE=%d\n",
     retval, GetLastError());
  if(dst[retval-1] != '\\')

      lstrcatA(dst, "\\");
  lstrcatA(dst, src);
  if(expect_short)
  {
    memcpy(shortname, dst, MAX_PATH);
    retval = GetShortPathNameA(shortname, dst, MAX_PATH-1);
    ok(retval > 0, "GetShortPathNameA returned %d for '%s', GLE=%d\n",
       retval, dst, GetLastError());
  }
}
