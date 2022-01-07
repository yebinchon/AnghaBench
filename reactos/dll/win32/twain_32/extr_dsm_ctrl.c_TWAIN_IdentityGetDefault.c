
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * pTW_IDENTITY ;
struct TYPE_2__ {int identity; } ;
typedef int TW_UINT16 ;
typedef int TW_MEMREF ;


 int DSM_twCC ;
 int TRACE (char*) ;
 int TWCC_NODS ;
 int TWCC_SUCCESS ;
 int TWRC_FAILURE ;
 int TWRC_SUCCESS ;
 TYPE_1__* devices ;
 int nrdevices ;
 int twain_autodetect () ;

TW_UINT16 TWAIN_IdentityGetDefault (pTW_IDENTITY pOrigin, TW_MEMREF pData)
{
 pTW_IDENTITY pSourceIdentity = (pTW_IDENTITY) pData;

 TRACE("DG_CONTROL/DAT_IDENTITY/MSG_GETDEFAULT\n");
 DSM_twCC = TWCC_NODS;
 twain_autodetect();
 if (!nrdevices)
  return TWRC_FAILURE;
 *pSourceIdentity = devices[0].identity;
 DSM_twCC = TWCC_SUCCESS;
 return TWRC_SUCCESS;
}
