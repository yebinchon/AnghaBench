
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int cidl; int* aoffset; } ;
typedef int LPITEMIDLIST ;
typedef TYPE_1__* LPIDA ;
typedef scalar_t__ LPBYTE ;
typedef int HGLOBAL ;
typedef int CIDA ;


 int GHND ;
 int GMEM_SHARE ;
 int GlobalAlloc (int,int) ;
 TYPE_1__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int ILGetSize (int ) ;
 int TRACE (char*,int ,int *,int) ;
 int memcpy (scalar_t__,int ,int) ;

HGLOBAL RenderSHELLIDLIST (LPITEMIDLIST pidlRoot, LPITEMIDLIST * apidl, UINT cidl)
{
 UINT i;
 int offset = 0, sizePidl, size;
 HGLOBAL hGlobal;
 LPIDA pcida;

 TRACE("(%p,%p,%u)\n", pidlRoot, apidl, cidl);


 size = sizeof(CIDA) + sizeof (UINT)*(cidl);
 size += ILGetSize (pidlRoot);
 for(i=0; i<cidl; i++)
 {
   size += ILGetSize(apidl[i]);
 }


 hGlobal = GlobalAlloc(GHND|GMEM_SHARE, size);
 if(!hGlobal) return hGlobal;
 pcida = GlobalLock (hGlobal);
 pcida->cidl = cidl;


 offset = sizeof(CIDA) + sizeof (UINT)*(cidl);
 pcida->aoffset[0] = offset;
 sizePidl = ILGetSize (pidlRoot);
 memcpy(((LPBYTE)pcida)+offset, pidlRoot, sizePidl);
 offset += sizePidl;

 for(i=0; i<cidl; i++)
 {
   pcida->aoffset[i+1] = offset;
   sizePidl = ILGetSize(apidl[i]);
   memcpy(((LPBYTE)pcida)+offset, apidl[i], sizePidl);
   offset += sizePidl;
 }

 GlobalUnlock(hGlobal);
 return hGlobal;
}
