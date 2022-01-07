
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmFile {scalar_t__ fd; int mutex; } ;
typedef int UInt64 ;
typedef int UChar ;
typedef int Int64 ;
typedef int DWORD ;


 int CHM_ACQUIRE_LOCK (int ) ;
 scalar_t__ CHM_NULL_FD ;
 int CHM_RELEASE_LOCK (int ) ;
 int FILE_BEGIN ;
 int FILE_CURRENT ;
 scalar_t__ ReadFile (scalar_t__,int *,int,int*,int *) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int SetFilePointer (scalar_t__,int,int*,int ) ;
 scalar_t__ TRUE ;
 int lseek (scalar_t__,long,int ) ;
 int lseek64 (scalar_t__,int,int ) ;
 int pread (scalar_t__,int *,long,unsigned int) ;
 int pread64 (scalar_t__,int *,long,int) ;
 int read (scalar_t__,int *,int) ;

__attribute__((used)) static Int64 _chm_fetch_bytes(struct chmFile *h,
                              UChar *buf,
                              UInt64 os,
                              Int64 len)
{
    Int64 readLen=0, oldOs=0;
    if (h->fd == CHM_NULL_FD)
        return readLen;

    CHM_ACQUIRE_LOCK(h->mutex);
    oldOs = lseek(h->fd, 0, SEEK_CUR);
    lseek(h->fd, (long)os, SEEK_SET);
    readLen = read(h->fd, buf, len);
    lseek(h->fd, (long)oldOs, SEEK_SET);



    CHM_RELEASE_LOCK(h->mutex);
    return readLen;
}
