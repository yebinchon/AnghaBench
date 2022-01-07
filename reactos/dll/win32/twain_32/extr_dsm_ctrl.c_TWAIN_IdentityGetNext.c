
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * pTW_IDENTITY ;
struct TYPE_2__ {int identity; } ;
typedef int TW_UINT16 ;
typedef int TW_MEMREF ;


 scalar_t__ DSM_currentDevice ;
 int DSM_twCC ;
 int TRACE (char*) ;
 int TWCC_SUCCESS ;
 int TWRC_ENDOFLIST ;
 int TWRC_SUCCESS ;
 TYPE_1__* devices ;
 scalar_t__ nrdevices ;

TW_UINT16 TWAIN_IdentityGetNext (pTW_IDENTITY pOrigin, TW_MEMREF pData)
{
 pTW_IDENTITY pSourceIdentity = (pTW_IDENTITY) pData;

 TRACE("DG_CONTROL/DAT_IDENTITY/MSG_GETNEXT\n");
 if (!nrdevices || (DSM_currentDevice == nrdevices)) {
  DSM_twCC = TWCC_SUCCESS;
  return TWRC_ENDOFLIST;
 }
 *pSourceIdentity = devices[DSM_currentDevice++].identity;
 return TWRC_SUCCESS;
}
