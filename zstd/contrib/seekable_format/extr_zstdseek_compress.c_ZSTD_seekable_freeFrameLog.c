
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_frameLog ;


 int ZSTD_seekable_frameLog_freeVec (int *) ;
 int free (int *) ;

size_t ZSTD_seekable_freeFrameLog(ZSTD_frameLog* fl)
{
    ZSTD_seekable_frameLog_freeVec(fl);
    free(fl);
    return 0;
}
