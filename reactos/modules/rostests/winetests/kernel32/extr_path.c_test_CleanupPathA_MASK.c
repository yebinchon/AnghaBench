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
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* LONGDIR ; 
 char* LONGFILE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* SHORTDIR ; 
 char* SHORTFILE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,...) ; 

__attribute__((used)) static void FUNC5(CHAR *origdir, CHAR *curdir)
{
  CHAR tmpstr[MAX_PATH];
  FUNC4(tmpstr,"%s\\%s\\%s",curdir,SHORTDIR,SHORTFILE);
  FUNC3(FUNC0(tmpstr),"DeleteFileA failed\n");
  FUNC4(tmpstr,"%s\\%s\\%s",curdir,SHORTDIR,LONGFILE);
  FUNC3(FUNC0(tmpstr),"DeleteFileA failed\n");
  FUNC4(tmpstr,"%s\\%s\\%s",curdir,LONGDIR,SHORTFILE);
  FUNC3(FUNC0(tmpstr),"DeleteFileA failed\n");
  FUNC4(tmpstr,"%s\\%s\\%s",curdir,LONGDIR,LONGFILE);
  FUNC3(FUNC0(tmpstr),"DeleteFileA failed\n");
  FUNC4(tmpstr,"%s\\%s",curdir,SHORTDIR);
  FUNC3(FUNC1(tmpstr),"RemoveDirectoryA failed\n");
  FUNC4(tmpstr,"%s\\%s",curdir,LONGDIR);
  FUNC3(FUNC1(tmpstr),"RemoveDirectoryA failed\n");
  FUNC3(FUNC2(origdir),"SetCurrentDirectoryA failed\n");
  FUNC3(FUNC1(curdir),"RemoveDirectoryA failed\n");
}