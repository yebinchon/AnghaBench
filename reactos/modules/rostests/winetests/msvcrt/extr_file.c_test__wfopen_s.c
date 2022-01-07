
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef char WCHAR ;
typedef int FILE ;


 int EOF ;
 scalar_t__ _unlink (char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,int,int *) ;
 int fwrite (char const*,int,int,int *) ;
 int ok (int,char*,...) ;
 int p__wfopen_s (int **,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__wfopen_s( void )
{
    const char name[] = "empty1";
    const WCHAR wname[] = {
       'e','m','p','t','y','1',0
    };
    const WCHAR wmode[] = {
       'w',0
    };
    char buff[16];
    FILE *file;
    int ret;
    int len;

    if (!p__wfopen_s)
    {
        win_skip("Skipping _wfopen_s test\n");
        return;
    }

    ret = p__wfopen_s(&file, wname, wmode);
    ok(ret == 0, "_wfopen_s failed with %d\n", ret);
    ok(file != 0, "_wfopen_s failed to return value\n");
    fwrite(name, sizeof(name), 1, file);

    ret = fclose(file);
    ok(ret != EOF, "File failed to close\n");

    file = fopen(name, "r");
    ok(file != 0, "fopen failed\n");
    len = fread(buff, 1, sizeof(name), file);
    ok(len == sizeof(name), "File length is %d\n", len);
    buff[sizeof(name)] = '\0';
    ok(strcmp(name, buff) == 0, "File content mismatch! Got %s, expected %s\n", buff, name);

    ret = fclose(file);
    ok(ret != EOF, "File failed to close\n");

    ok(_unlink(name) == 0, "Couldn't unlink file named '%s'\n", name);
}
