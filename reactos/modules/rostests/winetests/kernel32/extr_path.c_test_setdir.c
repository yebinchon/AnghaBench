
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;


 scalar_t__ GetCurrentDirectoryA (int,int *) ;
 int MAX_PATH ;
 int SetCurrentDirectoryA (int *) ;
 scalar_t__ lstrcmpiA (int *,int *) ;
 scalar_t__ lstrlenA (int *) ;
 int ok (int,char*,int const*) ;

__attribute__((used)) static void test_setdir(CHAR *olddir,CHAR *newdir,
                        CHAR *cmprstr, INT pass, const CHAR *errstr)
{
  CHAR tmppath[MAX_PATH], *dirptr;
  DWORD val,len,chklen;

  val=SetCurrentDirectoryA(newdir);
  len=GetCurrentDirectoryA(MAX_PATH,tmppath);

  if(pass) {
    dirptr=(cmprstr==((void*)0)) ? newdir : cmprstr;
    chklen=lstrlenA(dirptr);
    ok(val,"%s: SetCurrentDirectoryA failed\n",errstr);
    ok(len==chklen,
       "%s: SetCurrentDirectory did not change the directory, though it passed\n",
       errstr);
    ok(lstrcmpiA(dirptr,tmppath)==0,
       "%s: SetCurrentDirectory did not change the directory, though it passed\n",
       errstr);
    ok(SetCurrentDirectoryA(olddir),
       "%s: Couldn't set directory to its original value\n",errstr);
  } else {

    chklen=lstrlenA(olddir);
    ok(val==0,
       "%s: SetCurrentDirectoryA passed when it should have failed\n",errstr);
    ok(len==chklen,
       "%s: SetCurrentDirectory changed the directory, though it failed\n",
       errstr);
    ok(lstrcmpiA(olddir,tmppath)==0,
       "%s: SetCurrentDirectory changed the directory, though it failed\n",
       errstr);
  }
}
