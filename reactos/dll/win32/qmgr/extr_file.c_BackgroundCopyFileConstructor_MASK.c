#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  Completed; scalar_t__ BytesTransferred; int /*<<< orphan*/  BytesTotal; } ;
struct TYPE_12__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {TYPE_5__* RemoteName; void* LocalName; } ;
struct TYPE_15__ {int ref; scalar_t__* tempFileName; scalar_t__ read_size; TYPE_4__* owner; TYPE_3__ fileProgress; TYPE_2__ IBackgroundCopyFile2_iface; TYPE_1__ info; } ;
struct TYPE_14__ {int /*<<< orphan*/  IBackgroundCopyJob3_iface; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_4__ BackgroundCopyJobImpl ;
typedef  TYPE_5__ BackgroundCopyFileImpl ;

/* Variables and functions */
 int /*<<< orphan*/  BG_SIZE_UNKNOWN ; 
 int /*<<< orphan*/  BackgroundCopyFile2Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

HRESULT FUNC7(BackgroundCopyJobImpl *owner,
                                      LPCWSTR remoteName, LPCWSTR localName,
                                      BackgroundCopyFileImpl **file)
{
    BackgroundCopyFileImpl *This;

    FUNC4("(%s, %s, %p)\n", FUNC5(remoteName), FUNC5(localName), file);

    This = FUNC1(FUNC0(), 0, sizeof *This);
    if (!This)
        return E_OUTOFMEMORY;

    This->info.RemoteName = FUNC6(remoteName);
    if (!This->info.RemoteName)
    {
        FUNC2(FUNC0(), 0, This);
        return E_OUTOFMEMORY;
    }

    This->info.LocalName = FUNC6(localName);
    if (!This->info.LocalName)
    {
        FUNC2(FUNC0(), 0, This->info.RemoteName);
        FUNC2(FUNC0(), 0, This);
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
    FUNC3(&owner->IBackgroundCopyJob3_iface);

    *file = This;
    return S_OK;
}