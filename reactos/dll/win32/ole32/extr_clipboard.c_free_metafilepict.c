
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hMF; } ;
typedef TYPE_1__ METAFILEPICT ;
typedef int HGLOBAL ;


 int DeleteMetaFile (int ) ;
 int GlobalFree (int ) ;
 TYPE_1__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;

__attribute__((used)) static void free_metafilepict(HGLOBAL src)
{
    METAFILEPICT *src_ptr;

    src_ptr = GlobalLock(src);
    if (src_ptr)
    {
        DeleteMetaFile(src_ptr->hMF);
        GlobalUnlock(src);
    }
    GlobalFree(src);
}
