
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* abID; } ;
struct TYPE_8__ {TYPE_1__ mkid; } ;
typedef TYPE_2__* LPITEMIDLIST ;
typedef scalar_t__ HRESULT ;
typedef int BYTE ;


 int IMalloc_Free (int ,TYPE_2__*) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int getFolderName (int) ;
 int ok (int ,char*,int ) ;
 TYPE_2__* pILFindLastID (TYPE_2__*) ;
 int pMalloc ;
 scalar_t__ pSHGetFolderLocation (int *,int,int *,int ,TYPE_2__**) ;

__attribute__((used)) static BYTE testSHGetFolderLocation(int folder)
{
    LPITEMIDLIST pidl;
    HRESULT hr;
    BYTE ret = 0xff;


    if (!pSHGetFolderLocation) return TRUE;

    pidl = ((void*)0);
    hr = pSHGetFolderLocation(((void*)0), folder, ((void*)0), 0, &pidl);
    if (hr == S_OK)
    {
        if (pidl)
        {
            LPITEMIDLIST pidlLast = pILFindLastID(pidl);

            ok(pidlLast != ((void*)0), "%s: ILFindLastID failed\n",
             getFolderName(folder));
            if (pidlLast)
                ret = pidlLast->mkid.abID[0];
            IMalloc_Free(pMalloc, pidl);
        }
    }
    return ret;
}
