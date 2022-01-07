
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {int hreftype; int guid; } ;
struct TYPE_16__ {TYPE_2__* pLibInfo; TYPE_1__* pTblDir; } ;
struct TYPE_15__ {int offset; int entry; int hreftype; int guid; } ;
struct TYPE_14__ {int length; int offset; } ;
struct TYPE_13__ {int guid_list; } ;
struct TYPE_12__ {TYPE_3__ pGuidTab; } ;
typedef TYPE_4__ TLBGuid ;
typedef TYPE_5__ TLBContext ;
typedef TYPE_6__ MSFT_GuidEntry ;
typedef int HRESULT ;


 int DO_NOT_SEEK ;
 int MSFT_ReadLEWords (TYPE_6__*,int,TYPE_5__*,int ) ;
 int MSFT_Seek (TYPE_5__*,int ) ;
 int S_OK ;
 TYPE_4__* heap_alloc (int) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static HRESULT MSFT_ReadAllGuids(TLBContext *pcx)
{
    TLBGuid *guid;
    MSFT_GuidEntry entry;
    int offs = 0;

    MSFT_Seek(pcx, pcx->pTblDir->pGuidTab.offset);
    while (1) {
        if (offs >= pcx->pTblDir->pGuidTab.length)
            return S_OK;

        MSFT_ReadLEWords(&entry, sizeof(MSFT_GuidEntry), pcx, DO_NOT_SEEK);

        guid = heap_alloc(sizeof(TLBGuid));

        guid->offset = offs;
        guid->guid = entry.guid;
        guid->hreftype = entry.hreftype;

        list_add_tail(&pcx->pLibInfo->guid_list, &guid->entry);

        offs += sizeof(MSFT_GuidEntry);
    }
}
