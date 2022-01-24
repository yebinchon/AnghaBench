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
typedef  scalar_t__ INT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC5(CHAR *olddir,CHAR *newdir,
                        CHAR *cmprstr, INT pass, const CHAR *errstr)
{
  CHAR tmppath[MAX_PATH], *dirptr;
  DWORD val,len,chklen;

  val=FUNC1(newdir);
  len=FUNC0(MAX_PATH,tmppath);
/* if 'pass' then the SetDirectoryA was supposed to pass */
  if(pass) {
    dirptr=(cmprstr==NULL) ? newdir : cmprstr;
    chklen=FUNC3(dirptr);
    FUNC4(val,"%s: SetCurrentDirectoryA failed\n",errstr);
    FUNC4(len==chklen,
       "%s: SetCurrentDirectory did not change the directory, though it passed\n",
       errstr);
    FUNC4(FUNC2(dirptr,tmppath)==0,
       "%s: SetCurrentDirectory did not change the directory, though it passed\n",
       errstr);
    FUNC4(FUNC1(olddir),
       "%s: Couldn't set directory to its original value\n",errstr);
  } else {
/* else thest that it fails correctly */
    chklen=FUNC3(olddir);
    FUNC4(val==0,
       "%s: SetCurrentDirectoryA passed when it should have failed\n",errstr);
    FUNC4(len==chklen,
       "%s: SetCurrentDirectory changed the directory, though it failed\n",
       errstr);
    FUNC4(FUNC2(olddir,tmppath)==0,
       "%s: SetCurrentDirectory changed the directory, though it failed\n",
       errstr);
  }
}