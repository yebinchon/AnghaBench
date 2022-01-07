
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int member_1; int member_0; } ;
struct TYPE_7__ {int hEnhMetaFile; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef TYPE_3__ SIZEL ;
typedef int ME_TextEditor ;
typedef int HRESULT ;
typedef int FORMATETC ;


 int FALSE ;
 int ME_CommitUndo (int *) ;
 int ME_UpdateRepaint (int *,int ) ;
 int ReleaseStgMedium (TYPE_2__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int insert_static_object (int *,int ,int *,TYPE_3__*) ;

__attribute__((used)) static HRESULT paste_emf(ME_TextEditor *editor, FORMATETC *fmt, STGMEDIUM *med)
{
    HRESULT hr;
    SIZEL sz = {0, 0};

    hr = insert_static_object( editor, med->u.hEnhMetaFile, ((void*)0), &sz );
    if (SUCCEEDED(hr))
    {
        ME_CommitUndo( editor );
        ME_UpdateRepaint( editor, FALSE );
    }
    else
        ReleaseStgMedium( med );

    return hr;
}
