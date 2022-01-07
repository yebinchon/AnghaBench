
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * cstream; int framelog; } ;
typedef TYPE_1__ ZSTD_seekable_CStream ;


 int * ZSTD_createCStream () ;
 int ZSTD_freeCStream (int *) ;
 scalar_t__ ZSTD_isError (int ) ;
 int ZSTD_seekable_frameLog_allocVec (int *) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

ZSTD_seekable_CStream* ZSTD_seekable_createCStream()
{
    ZSTD_seekable_CStream* zcs = malloc(sizeof(ZSTD_seekable_CStream));

    if (zcs == ((void*)0)) return ((void*)0);

    memset(zcs, 0, sizeof(*zcs));

    zcs->cstream = ZSTD_createCStream();
    if (zcs->cstream == ((void*)0)) goto failed1;

    if (ZSTD_isError(ZSTD_seekable_frameLog_allocVec(&zcs->framelog))) goto failed2;

    return zcs;

failed2:
    ZSTD_freeCStream(zcs->cstream);
failed1:
    free(zcs);
    return ((void*)0);
}
