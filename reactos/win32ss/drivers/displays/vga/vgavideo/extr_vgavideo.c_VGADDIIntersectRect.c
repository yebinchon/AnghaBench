
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ left; scalar_t__ right; scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_1__* PRECTL ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 void* max (scalar_t__,scalar_t__) ;
 void* min (scalar_t__,scalar_t__) ;
 TYPE_1__ rclEmpty ;

BOOL VGADDIIntersectRect(PRECTL prcDst, PRECTL prcSrc1, PRECTL prcSrc2)
{
    prcDst->left = max(prcSrc1->left, prcSrc2->left);
    prcDst->right = min(prcSrc1->right, prcSrc2->right);

    if (prcDst->left < prcDst->right)
    {
        prcDst->top = max(prcSrc1->top, prcSrc2->top);
        prcDst->bottom = min(prcSrc1->bottom, prcSrc2->bottom);

       if (prcDst->top < prcDst->bottom)
           return TRUE;
    }

    *prcDst = rclEmpty;

    return FALSE;
}
