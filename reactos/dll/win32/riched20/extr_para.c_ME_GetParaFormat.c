
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {int cbSize; int dwMask; } ;
struct TYPE_9__ {TYPE_3__ fmt; } ;
struct TYPE_10__ {TYPE_1__ para; } ;
struct TYPE_12__ {TYPE_2__ member; } ;
typedef TYPE_3__ PARAFORMAT2 ;
typedef int ME_TextEditor ;
typedef TYPE_4__ ME_DisplayItem ;


 int CopyMemory (TYPE_3__*,TYPE_3__*,int) ;
 int PFM_ALL ;

__attribute__((used)) static void ME_GetParaFormat(ME_TextEditor *editor,
                             const ME_DisplayItem *para,
                             PARAFORMAT2 *pFmt)
{
  UINT cbSize = pFmt->cbSize;
  if (pFmt->cbSize >= sizeof(PARAFORMAT2)) {
    *pFmt = para->member.para.fmt;
  } else {
    CopyMemory(pFmt, &para->member.para.fmt, pFmt->cbSize);
    pFmt->dwMask &= PFM_ALL;
  }
  pFmt->cbSize = cbSize;
}
