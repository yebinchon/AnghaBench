
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int checksumFlag; scalar_t__ size; scalar_t__ seekTableIndex; scalar_t__ seekTablePos; } ;
typedef TYPE_1__ ZSTD_frameLog ;


 scalar_t__ ZSTD_isError (int ) ;
 int ZSTD_seekable_frameLog_allocVec (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

ZSTD_frameLog* ZSTD_seekable_createFrameLog(int checksumFlag)
{
    ZSTD_frameLog* fl = malloc(sizeof(ZSTD_frameLog));
    if (fl == ((void*)0)) return ((void*)0);

    if (ZSTD_isError(ZSTD_seekable_frameLog_allocVec(fl))) {
        free(fl);
        return ((void*)0);
    }

    fl->checksumFlag = checksumFlag;
    fl->seekTablePos = 0;
    fl->seekTableIndex = 0;
    fl->size = 0;

    return fl;
}
