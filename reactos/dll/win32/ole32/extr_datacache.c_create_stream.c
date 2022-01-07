
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int save_stream_num; } ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef TYPE_1__ DataCacheEntry ;
typedef scalar_t__ BOOL ;


 int* CONTENTS ;
 int IStorage_CreateStream (int *,int const*,int,int ,int ,int **) ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;

__attribute__((used)) static HRESULT create_stream(DataCacheEntry *cache_entry, IStorage *storage,
                             BOOL contents, IStream **stream)
{
    WCHAR pres[] = {2,'O','l','e','P','r','e','s',
        '0' + (cache_entry->save_stream_num / 100) % 10,
        '0' + (cache_entry->save_stream_num / 10) % 10,
        '0' + cache_entry->save_stream_num % 10, 0};
    const WCHAR *name;

    if (contents)
        name = CONTENTS;
    else
        name = pres;

    return IStorage_CreateStream(storage, name,
                                 STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_CREATE,
                                 0, 0, stream);
}
