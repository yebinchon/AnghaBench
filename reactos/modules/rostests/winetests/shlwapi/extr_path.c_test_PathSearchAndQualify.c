
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int GetFullPathNameW (char*,int,char*,int *) ;
 int MAX_PATH ;
 int PathAddBackslashW (char*) ;
 scalar_t__ PathSearchAndQualifyW (char*,char*,int) ;
 int SearchPathW (int *,char*,int *,int,char*,int *) ;
 int lstrcatW (char*,char*) ;
 int lstrcmpiW (char*,char*) ;
 int lstrcpyW (char*,char*) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_PathSearchAndQualify(void)
{
    WCHAR path1[] = {'c',':','\\','f','o','o',0};
    WCHAR expect1[] = {'c',':','\\','f','o','o',0};
    WCHAR path2[] = {'c',':','f','o','o',0};
    WCHAR c_drive[] = {'c',':',0};
    WCHAR foo[] = {'f','o','o',0};
    WCHAR path3[] = {'\\','f','o','o',0};
    WCHAR winini[] = {'w','i','n','.','i','n','i',0};
    WCHAR out[MAX_PATH];
    WCHAR cur_dir[MAX_PATH];
    WCHAR dot[] = {'.',0};


    ok(PathSearchAndQualifyW(path1, out, MAX_PATH) != 0,
       "PathSearchAndQualify rets 0\n");
    ok(!lstrcmpiW(out, expect1), "strings don't match\n");


    ok(PathSearchAndQualifyW(path2, out, MAX_PATH) != 0,
       "PathSearchAndQualify rets 0\n");
    GetFullPathNameW(c_drive, MAX_PATH, cur_dir, ((void*)0));
    PathAddBackslashW(cur_dir);
    lstrcatW(cur_dir, foo);
    ok(!lstrcmpiW(out, cur_dir), "strings don't match\n");


    ok(PathSearchAndQualifyW(foo, out, MAX_PATH) != 0,
       "PathSearchAndQualify rets 0\n");
    GetFullPathNameW(dot, MAX_PATH, cur_dir, ((void*)0));
    PathAddBackslashW(cur_dir);
    lstrcatW(cur_dir, foo);
    ok(!lstrcmpiW(out, cur_dir), "strings don't match\n");


    ok(PathSearchAndQualifyW(path3, out, MAX_PATH) != 0,
       "PathSearchAndQualify rets 0\n");
    GetFullPathNameW(dot, MAX_PATH, cur_dir, ((void*)0));
    lstrcpyW(cur_dir + 2, path3);
    ok(!lstrcmpiW(out, cur_dir), "strings don't match\n");


    ok(PathSearchAndQualifyW(winini, out, MAX_PATH) != 0,
       "PathSearchAndQualify rets 0\n");
    if(!SearchPathW(((void*)0), winini, ((void*)0), MAX_PATH, cur_dir, ((void*)0)))
        GetFullPathNameW(winini, MAX_PATH, cur_dir, ((void*)0));
    ok(!lstrcmpiW(out, cur_dir), "strings don't match\n");

}
