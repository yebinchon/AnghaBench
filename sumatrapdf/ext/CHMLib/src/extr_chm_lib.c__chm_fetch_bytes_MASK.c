#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct chmFile {scalar_t__ fd; int /*<<< orphan*/  mutex; } ;
typedef  int UInt64 ;
typedef  int /*<<< orphan*/  UChar ;
typedef  int Int64 ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHM_NULL_FD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FILE_CURRENT ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC3 (scalar_t__,int,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int FUNC4 (scalar_t__,long,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *,long,unsigned int) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,long,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Int64 FUNC9(struct chmFile *h,
                              UChar *buf,
                              UInt64 os,
                              Int64 len)
{
    Int64 readLen=0, oldOs=0;
    if (h->fd  ==  CHM_NULL_FD)
        return readLen;

    FUNC0(h->mutex);
#ifdef CHM_USE_WIN32IO
    /* NOTE: this might be better done with CreateFileMapping, et cetera... */
    {
        DWORD origOffsetLo=0, origOffsetHi=0;
        DWORD offsetLo, offsetHi;
        DWORD actualLen=0;

        /* awkward Win32 Seek/Tell */
        offsetLo = (unsigned int)(os & 0xffffffffL);
        offsetHi = (unsigned int)((os >> 32) & 0xffffffffL);
        origOffsetLo = SetFilePointer(h->fd, 0, &origOffsetHi, FILE_CURRENT);
        offsetLo = SetFilePointer(h->fd, offsetLo, &offsetHi, FILE_BEGIN);

        /* read the data */
        if (ReadFile(h->fd,
                     buf,
                     (DWORD)len,
                     &actualLen,
                     NULL) == TRUE)
            readLen = actualLen;
        else
            readLen = 0;

        /* restore original position */
        SetFilePointer(h->fd, origOffsetLo, &origOffsetHi, FILE_BEGIN);
    }
#else
#ifdef CHM_USE_PREAD
#ifdef CHM_USE_IO64
    readLen = pread64(h->fd, buf, (long)len, os);
#else
    readLen = pread(h->fd, buf, (long)len, (unsigned int)os);
#endif
#else
#ifdef CHM_USE_IO64
    oldOs = lseek64(h->fd, 0, SEEK_CUR);
    lseek64(h->fd, os, SEEK_SET);
    readLen = read(h->fd, buf, len);
    lseek64(h->fd, oldOs, SEEK_SET);
#else
    oldOs = FUNC4(h->fd, 0, SEEK_CUR);
    FUNC4(h->fd, (long)os, SEEK_SET);
    readLen = FUNC8(h->fd, buf, len);
    FUNC4(h->fd, (long)oldOs, SEEK_SET);
#endif
#endif
#endif
    FUNC1(h->mutex);
    return readLen;
}