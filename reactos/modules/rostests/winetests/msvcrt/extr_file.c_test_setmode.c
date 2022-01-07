
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int EINVAL ;
 int _O_BINARY ;
 int _O_CREAT ;
 int _O_TEXT ;
 int _O_U16TEXT ;
 int _O_U8TEXT ;
 int _O_WRONLY ;
 int _O_WTEXT ;
 int _S_IWRITE ;
 int _close (int) ;
 int _open (char const*,int,int ) ;
 int _setmode (int,int) ;
 int _unlink (char const*) ;
 int errno ;
 int ok (int,char*,...) ;
 int p_fopen_s ;
 int win_skip (char*) ;

__attribute__((used)) static void test_setmode(void)
{
    const char name[] = "empty1";
    int fd, ret;

    if(!p_fopen_s) {
        win_skip("unicode file modes are not available, skipping setmode tests\n");
        return;
    }

    errno = 0xdeadbeef;
    ret = _setmode(-2, 0);
    ok(ret == -1, "_setmode returned %x, expected -1\n", ret);
    ok(errno == EINVAL, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = _setmode(-2, _O_TEXT);
    ok(ret == -1, "_setmode returned %x, expected -1\n", ret);
    ok(errno == EBADF, "errno = %d\n", errno);

    fd = _open(name, _O_CREAT|_O_WRONLY, _S_IWRITE);
    ok(fd != -1, "failed to open file\n");

    errno = 0xdeadbeef;
    ret = _setmode(fd, 0xffffffff);
    ok(ret == -1, "_setmode returned %x, expected -1\n", ret);
    ok(errno == EINVAL, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = _setmode(fd, 0);
    ok(ret == -1, "_setmode returned %x, expected -1\n", ret);
    ok(errno == EINVAL, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = _setmode(fd, _O_BINARY|_O_TEXT);
    ok(ret == -1, "_setmode returned %x, expected -1\n", ret);
    ok(errno == EINVAL, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = _setmode(fd, _O_WTEXT|_O_U16TEXT);
    ok(ret == -1, "_setmode returned %x, expected -1\n", ret);
    ok(errno == EINVAL, "errno = %d\n", errno);

    ret = _setmode(fd, _O_BINARY);
    ok(ret == _O_TEXT, "_setmode returned %x, expected _O_TEXT\n", ret);

    ret = _setmode(fd, _O_WTEXT);
    ok(ret == _O_BINARY, "_setmode returned %x, expected _O_BINARY\n", ret);

    ret = _setmode(fd, _O_TEXT);
    ok(ret == _O_WTEXT, "_setmode returned %x, expected _O_WTEXT\n", ret);

    ret = _setmode(fd, _O_U16TEXT);
    ok(ret == _O_TEXT, "_setmode returned %x, expected _O_TEXT\n", ret);

    ret = _setmode(fd, _O_U8TEXT);
    ok(ret == _O_WTEXT, "_setmode returned %x, expected _O_WTEXT\n", ret);

    ret = _setmode(fd, _O_TEXT);
    ok(ret == _O_WTEXT, "_setmode returned %x, expected _O_WTEXT\n", ret);

    _close(fd);
    _unlink(name);
}
