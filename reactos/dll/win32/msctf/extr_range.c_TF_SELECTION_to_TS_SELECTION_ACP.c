
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int anchorEnd; int anchorStart; } ;
struct TYPE_10__ {int fInterimChar; int ase; } ;
struct TYPE_12__ {TYPE_2__ style; int range; } ;
struct TYPE_9__ {int fInterimChar; int ase; } ;
struct TYPE_11__ {TYPE_1__ style; int acpEnd; int acpStart; } ;
typedef TYPE_3__ TS_SELECTION_ACP ;
typedef TYPE_4__ TF_SELECTION ;
typedef TYPE_5__ Range ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int S_OK ;
 TYPE_5__* impl_from_ITfRange (int ) ;

HRESULT TF_SELECTION_to_TS_SELECTION_ACP(const TF_SELECTION *tf, TS_SELECTION_ACP *tsAcp)
{
    Range *This;

    if (!tf || !tsAcp || !tf->range)
        return E_INVALIDARG;

    This = impl_from_ITfRange(tf->range);

    tsAcp->acpStart = This->anchorStart;
    tsAcp->acpEnd = This->anchorEnd;
    tsAcp->style.ase = tf->style.ase;
    tsAcp->style.fInterimChar = tf->style.fInterimChar;
    return S_OK;
}
