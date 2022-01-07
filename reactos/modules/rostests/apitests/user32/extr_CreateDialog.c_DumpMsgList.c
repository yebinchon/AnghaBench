
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int msgCount; TYPE_1__* msgList; } ;
typedef TYPE_2__ tagMsgList ;
struct TYPE_4__ {int msg; int result; int lParam; int wParam; scalar_t__ DlgProc; } ;


 int printf (char*,...) ;

void DumpMsgList(const char* lstName, const tagMsgList *ml)
{
    const char *dlgProcName;
    int i1;

    printf("%s\n", lstName);
    for (i1 = 0; i1 < ml->msgCount; i1++)
    {
        dlgProcName = (ml->msgList[i1].DlgProc) ? "DlgProc" : "WndProc";
        printf("#%.3d %s, msg 0x%x, wParam 0x%Ix, lParam 0x%Ix, result %d\n",
               i1,
               dlgProcName,
               ml->msgList[i1].msg,
               ml->msgList[i1].wParam,
               ml->msgList[i1].lParam,
               ml->msgList[i1].result);
    }
}
