
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LONG_SEEK (int *,long long,int) ;
 int fflush (int *) ;

__attribute__((used)) static int ZSTD_seekable_seek_FILE(void* opaque, long long offset, int origin)
{
    int const ret = LONG_SEEK((FILE*)opaque, offset, origin);
    if (ret) return ret;
    return fflush((FILE*)opaque);
}
