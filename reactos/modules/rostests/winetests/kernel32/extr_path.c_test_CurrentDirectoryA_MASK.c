#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char* LPSTR ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* LONGDIR ; 
 int MAX_PATH ; 
 char* NONDIR_LONG ; 
 char* NONDIR_SHORT ; 
 char* SHORTDIR ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*,int,char*) ; 

__attribute__((used)) static void FUNC15(CHAR *origdir, CHAR *newdir)
{
  CHAR tmpstr[MAX_PATH],tmpstr1[MAX_PATH];
  char *buffer;
  DWORD len,len1;
/* Save the original directory, so that we can return to it at the end
   of the test
*/
  len=FUNC0(MAX_PATH,origdir);
  FUNC10(len!=0 && len < MAX_PATH,"GetCurrentDirectoryA failed\n");
/* Make sure that CetCurrentDirectoryA doesn't overwrite the buffer when the
   buffer size is too small to hold the current directory
*/
  FUNC9(tmpstr,"aaaaaaa");
  len1=FUNC0(len,tmpstr);
  FUNC10(len1==len+1, "GetCurrentDirectoryA returned %d instead of %d\n",len1,len+1);
  FUNC10(FUNC8(tmpstr,"aaaaaaa")==0,
     "GetCurrentDirectoryA should not have modified the buffer\n");

  buffer = FUNC3( FUNC2(), 0, 2 * 65536 );
  FUNC6( 0xdeadbeef );
  FUNC13( buffer, "foo" );
  len = FUNC0( 32767, buffer );
  FUNC10( len != 0 && len < MAX_PATH, "GetCurrentDirectoryA failed %u err %u\n", len, FUNC1() );
  if (len) FUNC10( !FUNC12( buffer, origdir ), "wrong result %s\n", buffer );
  FUNC6( 0xdeadbeef );
  FUNC13( buffer, "foo" );
  len = FUNC0( 32768, buffer );
  FUNC10( len != 0 && len < MAX_PATH, "GetCurrentDirectoryA failed %u err %u\n", len, FUNC1() );
  if (len) FUNC10( !FUNC12( buffer, origdir ), "wrong result %s\n", buffer );
  FUNC6( 0xdeadbeef );
  FUNC13( buffer, "foo" );
  len = FUNC0( 65535, buffer );
  FUNC10( (len != 0 && len < MAX_PATH) || FUNC7(!len), /* nt4, win2k, xp */ "GetCurrentDirectoryA failed %u err %u\n", len, FUNC1() );
  if (len) FUNC10( !FUNC12( buffer, origdir ), "wrong result %s\n", buffer );
  FUNC6( 0xdeadbeef );
  FUNC13( buffer, "foo" );
  len = FUNC0( 65536, buffer );
  FUNC10( (len != 0 && len < MAX_PATH) || FUNC7(!len), /* nt4 */ "GetCurrentDirectoryA failed %u err %u\n", len, FUNC1() );
  if (len) FUNC10( !FUNC12( buffer, origdir ), "wrong result %s\n", buffer );
  FUNC6( 0xdeadbeef );
  FUNC13( buffer, "foo" );
  len = FUNC0( 2 * 65536, buffer );
  FUNC10( (len != 0 && len < MAX_PATH) || FUNC7(!len), /* nt4 */ "GetCurrentDirectoryA failed %u err %u\n", len, FUNC1() );
  if (len) FUNC10( !FUNC12( buffer, origdir ), "wrong result %s\n", buffer );
  FUNC4( FUNC2(), 0, buffer );

/* Check for crash prevention on swapped args. Crashes all but Win9x.
*/
  if (0)
  {
      FUNC0( 42, (LPSTR)(MAX_PATH + 42) );
  }

/* SetCurrentDirectoryA shouldn't care whether the string has a
   trailing '\\' or not
*/
  FUNC11(tmpstr,"%s\\",newdir);
  FUNC14(origdir,tmpstr,newdir,1,"check 1");
  FUNC14(origdir,newdir,NULL,1,"check 2");
/* Set the directory to the working area.  We just tested that this works,
   so why check it again.
*/
  FUNC5(newdir);
/* Check that SetCurrentDirectory fails when a nonexistent dir is specified */
  FUNC11(tmpstr,"%s\\%s\\%s",newdir,SHORTDIR,NONDIR_SHORT);
  FUNC14(newdir,tmpstr,NULL,0,"check 3");
/* Check that SetCurrentDirectory fails for a nonexistent lond directory */
  FUNC11(tmpstr,"%s\\%s\\%s",newdir,SHORTDIR,NONDIR_LONG);
  FUNC14(newdir,tmpstr,NULL,0,"check 4");
/* Check that SetCurrentDirectory passes with a long directory */
  FUNC11(tmpstr,"%s\\%s",newdir,LONGDIR);
  FUNC14(newdir,tmpstr,NULL,1,"check 5");
/* Check that SetCurrentDirectory passes with a short relative directory */
  FUNC11(tmpstr,"%s",SHORTDIR);
  FUNC11(tmpstr1,"%s\\%s",newdir,SHORTDIR);
  FUNC14(newdir,tmpstr,tmpstr1,1,"check 6");
/* starting with a '.' */
  FUNC11(tmpstr,".\\%s",SHORTDIR);
  FUNC14(newdir,tmpstr,tmpstr1,1,"check 7");
/* Check that SetCurrentDirectory passes with a short relative directory */
  FUNC11(tmpstr,"%s",LONGDIR);
  FUNC11(tmpstr1,"%s\\%s",newdir,LONGDIR);
  FUNC14(newdir,tmpstr,tmpstr1,1,"check 8");
/* starting with a '.' */
  FUNC11(tmpstr,".\\%s",LONGDIR);
  FUNC14(newdir,tmpstr,tmpstr1,1,"check 9");
/* change to root without a trailing backslash. The function call succeeds
   but the directory is not changed.
*/
  FUNC11(tmpstr, "%c:", newdir[0]);
  FUNC14(newdir,tmpstr,newdir,1,"check 10");
/* works however with a trailing backslash */
  FUNC11(tmpstr, "%c:\\", newdir[0]);
  FUNC14(newdir,tmpstr,NULL,1,"check 11");
}