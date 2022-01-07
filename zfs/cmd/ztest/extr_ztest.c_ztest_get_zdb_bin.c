
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERIFY (int ) ;
 int fatal (int,char*,char*) ;
 char* getenv (char*) ;
 int getexecname () ;
 int * realpath (int ,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 char* strstr (char*,char*) ;
 scalar_t__ ztest_check_path (char*) ;
 scalar_t__ ztest_dump_core ;

__attribute__((used)) static void
ztest_get_zdb_bin(char *bin, int len)
{
 char *zdb_path;




 if ((zdb_path = getenv("ZDB_PATH"))) {
  strlcpy(bin, zdb_path, len);
  if (!ztest_check_path(bin)) {
   ztest_dump_core = 0;
   fatal(1, "invalid ZDB_PATH '%s'", bin);
  }
  return;
 }

 VERIFY(realpath(getexecname(), bin) != ((void*)0));
 if (strstr(bin, "/ztest/")) {
  strstr(bin, "/ztest/")[0] = '\0';
  strcat(bin, "/zdb/zdb");
  if (ztest_check_path(bin))
   return;
 }
 strcpy(bin, "zdb");
}
