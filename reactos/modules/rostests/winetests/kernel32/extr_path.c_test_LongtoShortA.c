
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CHAR ;


 int MAX_PATH ;
 scalar_t__ lstrcmpiA (int *,int const*) ;
 int ok (int,char*,int *,...) ;
 int test_SplitShortPathA (int *,int *,int *,int *) ;

__attribute__((used)) static void test_LongtoShortA(CHAR *teststr,const CHAR *goodstr,
                              const CHAR *ext,const CHAR *errstr) {
  CHAR dir[MAX_PATH],eight[MAX_PATH],three[MAX_PATH];

  test_SplitShortPathA(teststr,dir,eight,three);
  ok(lstrcmpiA(dir,goodstr)==0,
     "GetShortPathNameA returned '%s' instead of '%s'\n",dir,goodstr);
  ok(lstrcmpiA(three,ext)==0,
     "GetShortPathNameA returned '%s' with incorrect extension\n",three);
}
