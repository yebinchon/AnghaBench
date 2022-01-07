
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int msgCount; TYPE_1__* msgList; } ;
typedef TYPE_2__ tagMsgList ;
struct TYPE_6__ {scalar_t__ DlgProc; scalar_t__ msg; int cmpflag; scalar_t__ wParam; scalar_t__ lParam; scalar_t__ result; } ;
typedef int BOOL ;


 int DumpMsgList (char*,TYPE_2__ const*) ;
 int FALSE ;
 int MSGLST_CMP_LP ;
 int MSGLST_CMP_RES ;
 int MSGLST_CMP_WP ;
 int TRUE ;
 int ok (int ,char*,...) ;

BOOL CmpMsgList(const tagMsgList *recvd,
                const tagMsgList *expect)
{
    int i1;
    BOOL isOk;

    isOk = TRUE;
    if (recvd->msgCount != expect->msgCount)
    {
        ok(FALSE, "%d messages expected, %d messages received!\n",
           expect->msgCount, recvd->msgCount);
        isOk = FALSE;
    }
    else
    {
        for (i1 = 0; i1 < recvd->msgCount; i1++)
        {
            if (expect->msgList[i1].DlgProc != recvd->msgList[i1].DlgProc)
                isOk = FALSE;
            if (expect->msgList[i1].msg != recvd->msgList[i1].msg)
                isOk = FALSE;
            if ((expect->msgList[i1].cmpflag & MSGLST_CMP_WP) &&
                (expect->msgList[i1].wParam != recvd->msgList[i1].wParam))
                isOk = FALSE;
            if ((expect->msgList[i1].cmpflag & MSGLST_CMP_LP) &&
                (expect->msgList[i1].lParam != recvd->msgList[i1].lParam))
                isOk = FALSE;
            if ((expect->msgList[i1].cmpflag & MSGLST_CMP_RES) &&
                (expect->msgList[i1].result != recvd->msgList[i1].result))
                isOk = FALSE;
            if (!isOk)
            {
                ok(FALSE, "Message #%.3d not equal\n", i1);
                break;
            }
        }
    }

    if (!isOk)
    {
        DumpMsgList("RECEIVED", recvd);
        DumpMsgList("EXPECTED", expect);
        return FALSE;
    }

    ok(TRUE, "\n");
    return TRUE;
}
