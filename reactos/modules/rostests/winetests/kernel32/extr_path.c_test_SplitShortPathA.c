
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char CHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int lstrcpyA (char*,char*) ;
 int lstrcpynA (char*,char*,int) ;
 int lstrlenA (char*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_SplitShortPathA(CHAR *path,CHAR *dir,CHAR *eight,CHAR *three) {
  BOOL done = FALSE, error = FALSE;
  int ext,fil;
  int len,i;
  len=lstrlenA(path);
  ext=len;
  fil=len;

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

  ok(!error,"Illegal file found in 8.3 path '%s'\n",path);

  if(ext!=len) lstrcpyA(three,path+ext+1); else lstrcpyA(three,"");
  if(fil!=len) {
    lstrcpynA(eight,path+fil+1,ext-fil);
    lstrcpynA(dir,path,fil+1);
  } else {
    lstrcpynA(eight,path,ext+1);
    lstrcpyA(dir,"");
  }

  ok(lstrlenA(eight)<=8 && lstrlenA(three)<=3,
     "GetShortPathNAmeA did not return an 8.3 path\n");
}
