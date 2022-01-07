
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_12__ {int ref; TYPE_2__ IRichEditOle_iface; TYPE_3__ IUnknown_inner; TYPE_3__* outer_unk; int clientsites; int rangelist; int * txtSel; int * editor; TYPE_1__ ITextDocument2Old_iface; } ;
typedef int ME_TextEditor ;
typedef int LRESULT ;
typedef TYPE_2__* LPVOID ;
typedef TYPE_3__ IUnknown ;
typedef TYPE_4__ IRichEditOleImpl ;


 int TRACE (char*,TYPE_4__*) ;
 TYPE_4__* heap_alloc (int) ;
 int list_init (int *) ;
 int reo_unk_vtbl ;
 int revt ;
 int tdvt ;

LRESULT CreateIRichEditOle(IUnknown *outer_unk, ME_TextEditor *editor, LPVOID *ppvObj)
{
    IRichEditOleImpl *reo;

    reo = heap_alloc(sizeof(IRichEditOleImpl));
    if (!reo)
        return 0;

    reo->IUnknown_inner.lpVtbl = &reo_unk_vtbl;
    reo->IRichEditOle_iface.lpVtbl = &revt;
    reo->ITextDocument2Old_iface.lpVtbl = &tdvt;
    reo->ref = 1;
    reo->editor = editor;
    reo->txtSel = ((void*)0);

    TRACE("Created %p\n",reo);
    list_init(&reo->rangelist);
    list_init(&reo->clientsites);
    if (outer_unk)
        reo->outer_unk = outer_unk;
    else
        reo->outer_unk = &reo->IUnknown_inner;
    *ppvObj = &reo->IRichEditOle_iface;

    return 1;
}
