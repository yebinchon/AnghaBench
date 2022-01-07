
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int startup ;
struct TYPE_7__ {int hProcess; } ;
struct TYPE_6__ {int cb; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int FILE ;


 int CREATE_DEFAULT_ERROR_MODE ;
 int CreateProcessA (int *,char*,int *,int *,int ,int,int *,int *,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ GetTempPathA (int,char*) ;
 int MAX_PATH ;
 int NORMAL_PRIORITY_CLASS ;
 int TRUE ;
 int _mkdir (char*) ;
 int _rmdir (char*) ;
 int _unlink (char*) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 int sprintf (char*,char*,char*,...) ;
 int winetest_wait_child_process (int ) ;

__attribute__((used)) static void test___getmainargs_parent(char *name)
{
    char cmdline[3*MAX_PATH];
    char tmppath[MAX_PATH], filepath[MAX_PATH];
    STARTUPINFOA startup;
    PROCESS_INFORMATION proc;
    FILE *f;
    int ret;

    ok(GetTempPathA(MAX_PATH, tmppath) != 0, "GetTempPath failed\n");
    sprintf(cmdline, "%s data %s*\\* %swine_test/*", name, tmppath, tmppath);

    sprintf(filepath, "%swine_test", tmppath);
    ret = _mkdir(filepath);
    ok(!ret, "_mkdir failed: %d\n", errno);
    sprintf(filepath, "%swine_test\\a", tmppath);
    f = fopen(filepath, "w");
    ok(f != ((void*)0), "fopen(%s) failed: %d\n", filepath, errno);
    fclose(f);
    sprintf(filepath, "%swine_test\\test", tmppath);
    f = fopen(filepath, "w");
    ok(f != ((void*)0), "fopen(%s) failed: %d\n", filepath, errno);
    fclose(f);

    memset(&startup, 0, sizeof(startup));
    startup.cb = sizeof(startup);
    CreateProcessA(((void*)0), cmdline, ((void*)0), ((void*)0), TRUE, CREATE_DEFAULT_ERROR_MODE|NORMAL_PRIORITY_CLASS, ((void*)0), ((void*)0), &startup, &proc);
    winetest_wait_child_process(proc.hProcess);

    _unlink(filepath);
    sprintf(filepath, "%swine_test\\a", tmppath);
    _unlink(filepath);
    sprintf(filepath, "%swine_test", tmppath);
    _rmdir(filepath);
}
