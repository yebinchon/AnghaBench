
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* pTW_IDENTITY ;
struct TYPE_8__ {scalar_t__ Id; } ;
struct TYPE_10__ {scalar_t__ (* dsEntry ) (TYPE_2__*,int ,int ,int ,int ) ;struct TYPE_10__* next; TYPE_1__ identity; } ;
typedef TYPE_3__ activeDS ;
struct TYPE_9__ {scalar_t__ Id; } ;
typedef scalar_t__ TW_UINT16 ;
typedef int TW_MEMREF ;


 int DAT_IDENTITY ;
 int DG_CONTROL ;
 int DSM_twCC ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int MSG_CLOSEDS ;
 int TRACE (char*) ;
 int TWCC_NODS ;
 int TWCC_SEQERROR ;
 int TWCC_SUCCESS ;
 scalar_t__ TWRC_FAILURE ;
 scalar_t__ TWRC_SUCCESS ;
 TYPE_3__* activeSources ;
 scalar_t__ stub1 (TYPE_2__*,int ,int ,int ,int ) ;

TW_UINT16 TWAIN_CloseDS (pTW_IDENTITY pOrigin, TW_MEMREF pData)
{
 TW_UINT16 twRC = TWRC_SUCCESS;
 pTW_IDENTITY pIdentity = (pTW_IDENTITY) pData;
 activeDS *currentDS = ((void*)0), *prevDS = ((void*)0);

 TRACE ("DG_CONTROL/DAT_IDENTITY/MSG_CLOSEDS\n");

 for (currentDS = activeSources; currentDS; currentDS = currentDS->next) {
  if (currentDS->identity.Id == pIdentity->Id)
   break;
  prevDS = currentDS;
 }
 if (!currentDS) {
  DSM_twCC = TWCC_NODS;
  return TWRC_FAILURE;
 }
 twRC = currentDS->dsEntry (pOrigin, DG_CONTROL, DAT_IDENTITY, MSG_CLOSEDS, pData);



 if (prevDS)
  prevDS->next = currentDS->next;
 else
  activeSources = currentDS->next;
 HeapFree (GetProcessHeap(), 0, currentDS);
 if (twRC == TWRC_SUCCESS)
  DSM_twCC = TWCC_SUCCESS;
 else
  DSM_twCC = TWCC_SEQERROR;
 return twRC;
}
