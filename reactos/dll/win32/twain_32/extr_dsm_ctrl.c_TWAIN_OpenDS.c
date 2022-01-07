
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_3__* pTW_IDENTITY ;
struct TYPE_15__ {int ProductName; scalar_t__ Id; } ;
struct TYPE_17__ {scalar_t__ (* dsEntry ) (TYPE_3__*,int ,int ,int ,TYPE_3__*) ;int * event_window; int * ui_window; int pending_messages; TYPE_2__ identity; struct TYPE_17__* next; scalar_t__ hmod; } ;
typedef TYPE_4__ activeDS ;
struct TYPE_14__ {int ProductName; } ;
struct TYPE_18__ {int modname; TYPE_1__ identity; } ;
struct TYPE_16__ {char* ProductName; scalar_t__ Id; } ;
typedef size_t TW_UINT16 ;
typedef int TW_MEMREF ;
typedef scalar_t__ HMODULE ;
typedef scalar_t__ (* DSENTRYPROC ) (TYPE_3__*,int ,int ,int ,TYPE_3__*) ;


 int DAT_IDENTITY ;
 int DG_CONTROL ;
 int DSM_initialized ;
 int DSM_sourceId ;
 int DSM_twCC ;
 int ERR (char*,char const*) ;
 int FIXME (char*) ;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 int GetProcessHeap () ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_4__*) ;
 scalar_t__ LoadLibraryA (int ) ;
 int MSG_OPENDS ;
 int TRACE (char*,...) ;
 int TWCC_LOWMEMORY ;
 int TWCC_NODS ;
 int TWCC_OPERATIONERROR ;
 int TWCC_SEQERROR ;
 int TWCC_SUCCESS ;
 size_t TWRC_FAILURE ;
 scalar_t__ TWRC_SUCCESS ;
 TYPE_4__* activeSources ;
 TYPE_9__* devices ;
 int list_init (int *) ;
 size_t nrdevices ;
 int strcmp (int ,char*) ;
 int strcpy (int ,char*) ;
 scalar_t__ stub1 (TYPE_3__*,int ,int ,int ,TYPE_3__*) ;
 int twain_autodetect () ;

TW_UINT16 TWAIN_OpenDS (pTW_IDENTITY pOrigin, TW_MEMREF pData)
{
 TW_UINT16 i = 0;
 pTW_IDENTITY pIdentity = (pTW_IDENTITY) pData;
 activeDS *newSource;
 const char *modname = ((void*)0);
 HMODULE hmod;

 TRACE("DG_CONTROL/DAT_IDENTITY/MSG_OPENDS\n");
        TRACE("pIdentity is %s\n", pIdentity->ProductName);
 if (!DSM_initialized) {
  FIXME("seq error\n");
  DSM_twCC = TWCC_SEQERROR;
  return TWRC_FAILURE;
 }
 twain_autodetect();
 if (!nrdevices) {
  FIXME("no devs.\n");
  DSM_twCC = TWCC_NODS;
  return TWRC_FAILURE;
 }

 if (pIdentity->ProductName[0] != '\0') {

  for (i = 0; i<nrdevices; i++)
   if (!strcmp (devices[i].identity.ProductName, pIdentity->ProductName))
    break;
  if (i == nrdevices)
   i = 0;
 }


 newSource = HeapAlloc (GetProcessHeap(), 0, sizeof (activeDS));
 if (!newSource) {
  DSM_twCC = TWCC_LOWMEMORY;
  FIXME("Out of memory.\n");
  return TWRC_FAILURE;
 }
 hmod = LoadLibraryA(devices[i].modname);
 if (!hmod) {
  ERR("Failed to load TWAIN Source %s\n", modname);
  DSM_twCC = TWCC_OPERATIONERROR;
                HeapFree(GetProcessHeap(), 0, newSource);
  return TWRC_FAILURE;
 }
 newSource->hmod = hmod;
 newSource->dsEntry = (DSENTRYPROC)GetProcAddress(hmod, "DS_Entry");

 pIdentity->Id = DSM_sourceId ++;
 if (TWRC_SUCCESS != newSource->dsEntry (pOrigin, DG_CONTROL, DAT_IDENTITY, MSG_OPENDS, pIdentity)) {
  DSM_twCC = TWCC_OPERATIONERROR;
                HeapFree(GetProcessHeap(), 0, newSource);
                DSM_sourceId--;
  return TWRC_FAILURE;
 }

 newSource->next = activeSources;
 newSource->identity.Id = pIdentity->Id;
 strcpy (newSource->identity.ProductName, pIdentity->ProductName);
        list_init(&newSource->pending_messages);
        newSource->ui_window = ((void*)0);
        newSource->event_window = ((void*)0);
 activeSources = newSource;
 DSM_twCC = TWCC_SUCCESS;
 return TWRC_SUCCESS;
}
