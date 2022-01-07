
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;


 int GetLastError () ;
 char* PathBuildRootA (char*,int) ;
 int SetLastError (int) ;
 int lstrcmpA (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 int ok (int,char*,...) ;
 int sprintf (char*,char*,char) ;

__attribute__((used)) static void test_PathBuildRootA(void)
{
    LPSTR root;
    char path[10];
    char root_expected[26][4];
    char drive;
    int j;


    for (drive = 'A'; drive <= 'Z'; drive++)
        sprintf(root_expected[drive - 'A'], "%c:\\", drive);


    for (j = 0; j < 26; j++)
    {
        SetLastError(0xdeadbeef);
        lstrcpyA(path, "aaaaaaaaa");
        root = PathBuildRootA(path, j);
        ok(root == path, "Expected root == path, got %p\n", root);
        ok(!lstrcmpA(root, root_expected[j]), "Expected %s, got %s\n", root_expected[j], root);
        ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());
    }


    SetLastError(0xdeadbeef);
    lstrcpyA(path, "aaaaaaaaa");
    root = PathBuildRootA(path, -1);
    ok(root == path, "Expected root == path, got %p\n", root);
    ok(!lstrcmpA(path, "aaaaaaaaa") || !path[0],
       "Expected aaaaaaaaa or empty string, got %s\n", path);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    lstrcpyA(path, "aaaaaaaaa");
    root = PathBuildRootA(path, 26);
    ok(root == path, "Expected root == path, got %p\n", root);
    ok(!lstrcmpA(path, "aaaaaaaaa") || !path[0],
       "Expected aaaaaaaaa or empty string, got %s\n", path);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    lstrcpyA(path, "aa");
    root = PathBuildRootA(path, 0);
    ok(root == path, "Expected root == path, got %p\n", root);
    ok(!lstrcmpA(path, "A:\\"), "Expected A:\\, got %s\n", path);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    root = PathBuildRootA(((void*)0), 0);
    ok(root == ((void*)0), "Expected root == NULL, got %p\n", root);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());
}
