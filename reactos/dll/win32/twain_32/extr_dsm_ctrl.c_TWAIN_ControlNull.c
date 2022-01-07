
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pending_message {int entry; scalar_t__ msg; } ;
typedef int pTW_IDENTITY ;
struct TYPE_3__ {scalar_t__ ui_window; scalar_t__ event_window; int pending_messages; } ;
typedef TYPE_1__ activeDS ;
typedef scalar_t__ TW_UINT16 ;
typedef int TW_MEMREF ;


 scalar_t__ DSM_parent ;
 int DSM_twCC ;
 int GetProcessHeap () ;
 struct pending_message* HeapAlloc (int ,int ,int) ;
 scalar_t__ MSG_CLOSEDSREQ ;
 scalar_t__ MSG_DEVICEEVENT ;
 scalar_t__ MSG_XFERREADY ;
 int PostMessageW (scalar_t__,int ,int ,int ) ;
 int TRACE (char*,scalar_t__) ;
 int TWCC_BADPROTOCOL ;
 int TWCC_LOWMEMORY ;
 scalar_t__ TWRC_FAILURE ;
 scalar_t__ TWRC_SUCCESS ;
 int event_message ;
 int list_add_tail (int *,int *) ;

TW_UINT16 TWAIN_ControlNull (pTW_IDENTITY pOrigin, pTW_IDENTITY pDest, activeDS *pSource, TW_UINT16 MSG, TW_MEMREF pData)
{
    struct pending_message *message;

    TRACE ("DG_CONTROL/DAT_NULL MSG=%i\n", MSG);

    if (MSG != MSG_CLOSEDSREQ &&
        MSG != MSG_DEVICEEVENT &&
        MSG != MSG_XFERREADY)
    {
        DSM_twCC = TWCC_BADPROTOCOL;
        return TWRC_FAILURE;
    }

    message = HeapAlloc(GetProcessHeap(), 0, sizeof(*message));
    if (!message)
    {
        DSM_twCC = TWCC_LOWMEMORY;
        return TWRC_FAILURE;
    }

    message->msg = MSG;
    list_add_tail(&pSource->pending_messages, &message->entry);






    if (DSM_parent)
        PostMessageW(DSM_parent, event_message, 0, 0);
    if (pSource->ui_window && pSource->ui_window != DSM_parent)
        PostMessageW(pSource->ui_window, event_message, 0, 0);
    if (pSource->event_window && pSource->event_window != pSource->ui_window &&
        pSource->event_window != DSM_parent)
        PostMessageW(pSource->event_window, event_message, 0, 0);
    PostMessageW(0, event_message, 0, 0);

    return TWRC_SUCCESS;
}
