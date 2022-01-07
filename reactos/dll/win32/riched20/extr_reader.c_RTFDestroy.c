
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* parent; } ;
struct TYPE_6__ {TYPE_2__* tableDef; TYPE_2__* cpOutputBuffer; TYPE_2__* pushedTextBuf; TYPE_2__* rtfTextBuf; } ;
typedef TYPE_1__ RTF_Info ;
typedef TYPE_2__ RTFTable ;


 int RTFDestroyAttrs (TYPE_1__*) ;
 int heap_free (TYPE_2__*) ;

void
RTFDestroy(RTF_Info *info)
{
 if (info->rtfTextBuf)
 {
  heap_free(info->rtfTextBuf);
  heap_free(info->pushedTextBuf);
 }
 RTFDestroyAttrs(info);
 heap_free(info->cpOutputBuffer);
        while (info->tableDef)
        {
                RTFTable *tableDef = info->tableDef;
                info->tableDef = tableDef->parent;
                heap_free(tableDef);
        }
}
