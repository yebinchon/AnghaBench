#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ shortlen; char* shorterror; scalar_t__ longlen; char* longerror; } ;
typedef  TYPE_1__ SLpassfail ;
typedef  scalar_t__ INT ;
typedef  char CHAR ;

/* Variables and functions */
 char* ERROR_FILE_NOT_FOUND ; 
 char* ERROR_INVALID_NAME ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 int MAX_PATH ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ pGetLongPathNameA ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC5(CHAR *curdir,CHAR *curdir_short,CHAR *filename, INT valid,CHAR *errstr)
{
  CHAR tmpstr[MAX_PATH],tmpstr1[MAX_PATH];
  SLpassfail passfail;

  FUNC4(curdir,"",filename,tmpstr,&passfail,errstr);
  if(valid) {
    FUNC2(tmpstr1,"%s\\%s",curdir_short,filename);
      FUNC1((passfail.shortlen==0 &&
          (passfail.shorterror==ERROR_FILE_NOT_FOUND || passfail.shorterror==ERROR_PATH_NOT_FOUND || !passfail.shorterror)) ||
         (passfail.shortlen==FUNC3(tmpstr1) && FUNC0(tmpstr,tmpstr1)==0),
         "%s: GetShortPathNameA error: len=%d error=%d tmpstr=[%s]\n",
         errstr,passfail.shortlen,passfail.shorterror,tmpstr);
  } else {
      FUNC1(passfail.shortlen==0 &&
         (passfail.shorterror==ERROR_INVALID_NAME || passfail.shorterror==ERROR_FILE_NOT_FOUND || !passfail.shorterror),
         "%s: GetShortPathA should have failed len=%d, error=%d\n",
         errstr,passfail.shortlen,passfail.shorterror);
  }
  if(pGetLongPathNameA) {
    FUNC1(passfail.longlen==0,"GetLongPathNameA passed when it shouldn't have\n");
    if(valid) {
      FUNC1(passfail.longerror==ERROR_FILE_NOT_FOUND,
         "%s: GetLongPathA returned %d and not %d\n",
         errstr,passfail.longerror,ERROR_FILE_NOT_FOUND);
    } else {
      FUNC1(passfail.longerror==ERROR_INVALID_NAME ||
         passfail.longerror==ERROR_FILE_NOT_FOUND,
         "%s: GetLongPathA returned %d and not %d or %d'\n",
         errstr, passfail.longerror,ERROR_INVALID_NAME,ERROR_FILE_NOT_FOUND);
    }
  }
}