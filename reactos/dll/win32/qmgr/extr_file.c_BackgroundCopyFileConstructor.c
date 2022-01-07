
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int Completed; scalar_t__ BytesTransferred; int BytesTotal; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {TYPE_5__* RemoteName; void* LocalName; } ;
struct TYPE_15__ {int ref; scalar_t__* tempFileName; scalar_t__ read_size; TYPE_4__* owner; TYPE_3__ fileProgress; TYPE_2__ IBackgroundCopyFile2_iface; TYPE_1__ info; } ;
struct TYPE_14__ {int IBackgroundCopyJob3_iface; } ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef TYPE_4__ BackgroundCopyJobImpl ;
typedef TYPE_5__ BackgroundCopyFileImpl ;


 int BG_SIZE_UNKNOWN ;
 int BackgroundCopyFile2Vtbl ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int GetProcessHeap () ;
 TYPE_5__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_5__*) ;
 int IBackgroundCopyJob3_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,int ,int ,TYPE_5__**) ;
 int debugstr_w (int ) ;
 void* strdupW (int ) ;

HRESULT BackgroundCopyFileConstructor(BackgroundCopyJobImpl *owner,
                                      LPCWSTR remoteName, LPCWSTR localName,
                                      BackgroundCopyFileImpl **file)
{
    BackgroundCopyFileImpl *This;

    TRACE("(%s, %s, %p)\n", debugstr_w(remoteName), debugstr_w(localName), file);

    This = HeapAlloc(GetProcessHeap(), 0, sizeof *This);
    if (!This)
        return E_OUTOFMEMORY;

    This->info.RemoteName = strdupW(remoteName);
    if (!This->info.RemoteName)
    {
        HeapFree(GetProcessHeap(), 0, This);
        return E_OUTOFMEMORY;
    }

    This->info.LocalName = strdupW(localName);
    if (!This->info.LocalName)
    {
        HeapFree(GetProcessHeap(), 0, This->info.RemoteName);
        HeapFree(GetProcessHeap(), 0, This);
        return E_OUTOFMEMORY;
    }

    This->IBackgroundCopyFile2_iface.lpVtbl = &BackgroundCopyFile2Vtbl;
    This->ref = 1;

    This->fileProgress.BytesTotal = BG_SIZE_UNKNOWN;
    This->fileProgress.BytesTransferred = 0;
    This->fileProgress.Completed = FALSE;
    This->owner = owner;
    This->read_size = 0;
    This->tempFileName[0] = 0;
    IBackgroundCopyJob3_AddRef(&owner->IBackgroundCopyJob3_iface);

    *file = This;
    return S_OK;
}
