
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;
typedef int FILE ;


 int ZeroMemory (char*,int) ;
 int* _errno () ;
 int _pclose (int *) ;
 int * _popen (char*,char*) ;
 int fgets (char*,int,int *) ;
 scalar_t__ lstrcmp (char*,char*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void Test_popen()
{
    FILE * f;
    int r;
    char str[20];


    f = _popen("cmd.exe /C \"echo Hallo\"", "r");
    ok(f != ((void*)0), "_popen returns NULL!\n");

    ZeroMemory(str, sizeof(str));
    fgets(str, sizeof(str) - 1, f);
    ok(lstrcmp(str, "Hallo\n") == 0, "fgets: expected \"Hallo\", got %s.\n", str);

    r = _pclose(f);
    ok(r == 0, "_pclose: expected 0, got %i.\n", r);
    r = *_errno();
    ok(r == 0, "_errno: expected 0, got %i,\n", r);
}
