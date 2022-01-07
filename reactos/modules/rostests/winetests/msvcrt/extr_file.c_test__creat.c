
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteFileA (char*) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_ATTRIBUTE_READONLY ;
 int GetFileAttributesA (char*) ;
 int SEEK_SET ;
 int SetFileAttributesA (char*,int ) ;
 int _O_BINARY ;
 int _O_TEXT ;
 int _S_IREAD ;
 int _S_IWRITE ;
 int _close (int) ;
 int _creat (char*,int) ;
 scalar_t__ _lseek (int,int ,int ) ;
 int _read (int,char*,int) ;
 int _tell (int) ;
 int _write (int,char*,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int ok (int,char*,...) ;
 int p__get_fmode (int*) ;
 int p__set_fmode (int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__creat(void)
{
    int fd, pos, count, readonly, old_fmode = 0, have_fmode;
    char buf[6], testdata[4] = {'a', '\n', 'b', '\n'};

    have_fmode = p__get_fmode && p__set_fmode && !p__get_fmode(&old_fmode);
    if (!have_fmode)
        win_skip("_fmode can't be set, skipping mode tests\n");

    if (have_fmode)
        p__set_fmode(_O_TEXT);
    fd = _creat("_creat.tst", 0);
    ok(fd > 0, "_creat failed\n");
    _write(fd, testdata, 4);
    if (have_fmode) {
        pos = _tell(fd);
        ok(pos == 6, "expected pos 6 (text mode), got %d\n", pos);
    }
    ok(_lseek(fd, SEEK_SET, 0) == 0, "_lseek failed\n");
    count = _read(fd, buf, 6);
    ok(count == 4, "_read returned %d, expected 4\n", count);
    count = count > 0 ? count > 4 ? 4 : count : 0;
    ok(memcmp(buf, testdata, count) == 0, "_read returned wrong contents\n");
    _close(fd);
    readonly = GetFileAttributesA("_creat.tst") & FILE_ATTRIBUTE_READONLY;
    ok(readonly, "expected read-only file\n");
    SetFileAttributesA("_creat.tst", FILE_ATTRIBUTE_NORMAL);
    DeleteFileA("_creat.tst");

    if (have_fmode)
        p__set_fmode(_O_BINARY);
    fd = _creat("_creat.tst", _S_IREAD | _S_IWRITE);
    ok(fd > 0, "_creat failed\n");
    _write(fd, testdata, 4);
    if (have_fmode) {
        pos = _tell(fd);
        ok(pos == 4, "expected pos 4 (binary mode), got %d\n", pos);
    }
    ok(_lseek(fd, SEEK_SET, 0) == 0, "_lseek failed\n");
    count = _read(fd, buf, 6);
    ok(count == 4, "_read returned %d, expected 4\n", count);
    count = count > 0 ? count > 4 ? 4 : count : 0;
    ok(memcmp(buf, testdata, count) == 0, "_read returned wrong contents\n");
    _close(fd);
    readonly = GetFileAttributesA("_creat.tst") & FILE_ATTRIBUTE_READONLY;
    ok(!readonly, "expected rw file\n");
    SetFileAttributesA("_creat.tst", FILE_ATTRIBUTE_NORMAL);
    DeleteFileA("_creat.tst");

    if (have_fmode)
        p__set_fmode(old_fmode);
}
