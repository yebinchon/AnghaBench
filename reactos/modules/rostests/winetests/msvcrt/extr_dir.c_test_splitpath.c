
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATH ;
 int _getmbcp () ;
 int _setmbcp (int) ;
 int _splitpath (char const*,char*,char*,char*,char*) ;
 int ok (int,char*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void test_splitpath(void)
{
    const char* path = "c:\\\x83\x5c\x83\x74\x83\x67.bin";
    char drive[3], dir[MAX_PATH], fname[MAX_PATH], ext[MAX_PATH];
    int prev_cp = _getmbcp();


    _setmbcp(1252);
    _splitpath(path, drive, dir, fname, ext);
    ok(!strcmp(drive, "c:"), "got %s\n", drive);
    ok(!strcmp(dir, "\\\x83\x5c"), "got %s\n", dir);
    ok(!strcmp(fname, "\x83\x74\x83\x67"), "got %s\n", fname);
    ok(!strcmp(ext, ".bin"), "got %s\n", ext);


    _setmbcp(932);
    _splitpath(path, drive, dir, fname, ext);
    ok(!strcmp(drive, "c:"), "got %s\n", drive);
    ok(!strcmp(dir, "\\"), "got %s\n", dir);
    ok(!strcmp(fname, "\x83\x5c\x83\x74\x83\x67"), "got %s\n", fname);
    ok(!strcmp(ext, ".bin"), "got %s\n", ext);

    _setmbcp(prev_cp);
}
