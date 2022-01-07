
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* style; } ;
struct TYPE_8__ {TYPE_2__ run; } ;
struct TYPE_9__ {TYPE_3__ member; } ;
struct TYPE_6__ {int fmt; } ;
typedef int ME_TextEditor ;
typedef TYPE_4__ ME_DisplayItem ;
typedef int CHARFORMAT2W ;


 int ME_CopyCharFormat (int *,int *) ;

__attribute__((used)) static void ME_GetRunCharFormat(ME_TextEditor *editor, ME_DisplayItem *run, CHARFORMAT2W *pFmt)
{
  ME_CopyCharFormat(pFmt, &run->member.run.style->fmt);
}
