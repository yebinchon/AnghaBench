
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 scalar_t__ EBADF ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,char*,int,int *,int *) ;
 int _O_CREAT ;
 int _O_RDONLY ;
 int _O_RDWR ;
 int _SH_DENYRW ;
 int _S_IREAD ;
 int _S_IWRITE ;
 int _close (int) ;
 scalar_t__ _get_osfhandle (int) ;
 int _open (char*,int ,int ) ;
 int _sopen (char*,int,int ,int) ;
 int _unlink (char*) ;
 scalar_t__ errno ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_get_osfhandle(void)
{
    int fd;
    char fname[] = "t_get_osfhanle";
    DWORD bytes_written;
    HANDLE handle;

    fd = _sopen(fname, _O_CREAT|_O_RDWR, _SH_DENYRW, _S_IREAD | _S_IWRITE);
    handle = (HANDLE)_get_osfhandle(fd);
    WriteFile(handle, "bar", 3, &bytes_written, ((void*)0));
    _close(fd);
    fd = _open(fname, _O_RDONLY, 0);
    ok(fd != -1, "Couldn't open '%s' after _get_osfhandle()\n", fname);

    _close(fd);
    _unlink(fname);

    errno = 0xdeadbeef;
    handle = (HANDLE)_get_osfhandle(fd);
    ok(handle == INVALID_HANDLE_VALUE, "_get_osfhandle returned %p\n", handle);
    ok(errno == EBADF, "errno = %d\n", errno);
}
