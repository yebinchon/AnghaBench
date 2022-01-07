
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef int DWORD ;
typedef char CHAR ;


 int GetCurrentDirectoryA (int,char*) ;
 int GetLastError () ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 char* LONGDIR ;
 int MAX_PATH ;
 char* NONDIR_LONG ;
 char* NONDIR_SHORT ;
 char* SHORTDIR ;
 int SetCurrentDirectoryA (char*) ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 scalar_t__ lstrcmpiA (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 int ok (int,char*,...) ;
 int sprintf (char*,char*,...) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int test_setdir (char*,char*,char*,int,char*) ;

__attribute__((used)) static void test_CurrentDirectoryA(CHAR *origdir, CHAR *newdir)
{
  CHAR tmpstr[MAX_PATH],tmpstr1[MAX_PATH];
  char *buffer;
  DWORD len,len1;



  len=GetCurrentDirectoryA(MAX_PATH,origdir);
  ok(len!=0 && len < MAX_PATH,"GetCurrentDirectoryA failed\n");



  lstrcpyA(tmpstr,"aaaaaaa");
  len1=GetCurrentDirectoryA(len,tmpstr);
  ok(len1==len+1, "GetCurrentDirectoryA returned %d instead of %d\n",len1,len+1);
  ok(lstrcmpiA(tmpstr,"aaaaaaa")==0,
     "GetCurrentDirectoryA should not have modified the buffer\n");

  buffer = HeapAlloc( GetProcessHeap(), 0, 2 * 65536 );
  SetLastError( 0xdeadbeef );
  strcpy( buffer, "foo" );
  len = GetCurrentDirectoryA( 32767, buffer );
  ok( len != 0 && len < MAX_PATH, "GetCurrentDirectoryA failed %u err %u\n", len, GetLastError() );
  if (len) ok( !strcmp( buffer, origdir ), "wrong result %s\n", buffer );
  SetLastError( 0xdeadbeef );
  strcpy( buffer, "foo" );
  len = GetCurrentDirectoryA( 32768, buffer );
  ok( len != 0 && len < MAX_PATH, "GetCurrentDirectoryA failed %u err %u\n", len, GetLastError() );
  if (len) ok( !strcmp( buffer, origdir ), "wrong result %s\n", buffer );
  SetLastError( 0xdeadbeef );
  strcpy( buffer, "foo" );
  len = GetCurrentDirectoryA( 65535, buffer );
  ok( (len != 0 && len < MAX_PATH) || broken(!len), "GetCurrentDirectoryA failed %u err %u\n", len, GetLastError() );
  if (len) ok( !strcmp( buffer, origdir ), "wrong result %s\n", buffer );
  SetLastError( 0xdeadbeef );
  strcpy( buffer, "foo" );
  len = GetCurrentDirectoryA( 65536, buffer );
  ok( (len != 0 && len < MAX_PATH) || broken(!len), "GetCurrentDirectoryA failed %u err %u\n", len, GetLastError() );
  if (len) ok( !strcmp( buffer, origdir ), "wrong result %s\n", buffer );
  SetLastError( 0xdeadbeef );
  strcpy( buffer, "foo" );
  len = GetCurrentDirectoryA( 2 * 65536, buffer );
  ok( (len != 0 && len < MAX_PATH) || broken(!len), "GetCurrentDirectoryA failed %u err %u\n", len, GetLastError() );
  if (len) ok( !strcmp( buffer, origdir ), "wrong result %s\n", buffer );
  HeapFree( GetProcessHeap(), 0, buffer );



  if (0)
  {
      GetCurrentDirectoryA( 42, (LPSTR)(MAX_PATH + 42) );
  }




  sprintf(tmpstr,"%s\\",newdir);
  test_setdir(origdir,tmpstr,newdir,1,"check 1");
  test_setdir(origdir,newdir,((void*)0),1,"check 2");



  SetCurrentDirectoryA(newdir);

  sprintf(tmpstr,"%s\\%s\\%s",newdir,SHORTDIR,NONDIR_SHORT);
  test_setdir(newdir,tmpstr,((void*)0),0,"check 3");

  sprintf(tmpstr,"%s\\%s\\%s",newdir,SHORTDIR,NONDIR_LONG);
  test_setdir(newdir,tmpstr,((void*)0),0,"check 4");

  sprintf(tmpstr,"%s\\%s",newdir,LONGDIR);
  test_setdir(newdir,tmpstr,((void*)0),1,"check 5");

  sprintf(tmpstr,"%s",SHORTDIR);
  sprintf(tmpstr1,"%s\\%s",newdir,SHORTDIR);
  test_setdir(newdir,tmpstr,tmpstr1,1,"check 6");

  sprintf(tmpstr,".\\%s",SHORTDIR);
  test_setdir(newdir,tmpstr,tmpstr1,1,"check 7");

  sprintf(tmpstr,"%s",LONGDIR);
  sprintf(tmpstr1,"%s\\%s",newdir,LONGDIR);
  test_setdir(newdir,tmpstr,tmpstr1,1,"check 8");

  sprintf(tmpstr,".\\%s",LONGDIR);
  test_setdir(newdir,tmpstr,tmpstr1,1,"check 9");



  sprintf(tmpstr, "%c:", newdir[0]);
  test_setdir(newdir,tmpstr,newdir,1,"check 10");

  sprintf(tmpstr, "%c:\\", newdir[0]);
  test_setdir(newdir,tmpstr,((void*)0),1,"check 11");
}
