
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPVOID ;
typedef scalar_t__ HGLOBAL ;


 scalar_t__ GlobalLock (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;

int IsMovable(HGLOBAL hMem)
{
    LPVOID pMem = 0;
    int rc = 0;

    pMem = GlobalLock(hMem);
    if (pMem != hMem)
    {
        rc = 1;
    }
    GlobalUnlock(hMem);

    return rc;
}
