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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(CHAR *path,CHAR *dir,CHAR *eight,CHAR *three) {
  BOOL done = FALSE, error = FALSE;
  int ext,fil;
  int len,i;
  len=FUNC2(path);
  ext=len;
  fil=len;
/* walk backwards over path looking for '.' or '\\' separators */
  for(i=len-1;(i>=0) && (!done);i--) {
    if(path[i]=='.')
      if(ext!=len) error=TRUE; else ext=i;
    else if(path[i]=='\\') {
      if(i==len-1) {
        error=TRUE;
      } else {
        fil=i;
        done=TRUE;
      }
    }
  }
/* Check that we didn't find a trailing '\\' or multiple '.' */
  FUNC3(!error,"Illegal file found in 8.3 path '%s'\n",path);
/* Separate dir, root, and extension */
  if(ext!=len) FUNC0(three,path+ext+1); else FUNC0(three,"");
  if(fil!=len) {
    FUNC1(eight,path+fil+1,ext-fil);
    FUNC1(dir,path,fil+1);
  } else {
    FUNC1(eight,path,ext+1);
    FUNC0(dir,"");
  }
/* Validate that root and extension really are 8.3 */
  FUNC3(FUNC2(eight)<=8 && FUNC2(three)<=3,
     "GetShortPathNAmeA did not return an 8.3 path\n");
}