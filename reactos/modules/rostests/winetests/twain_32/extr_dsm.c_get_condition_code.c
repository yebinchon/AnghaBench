
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TW_UINT16 ;
typedef int TW_STATUS ;
typedef int TW_IDENTITY ;


 int DAT_STATUS ;
 int DG_CONTROL ;
 int MSG_GET ;
 scalar_t__ TWRC_SUCCESS ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pDSM_Entry (int *,int *,int ,int ,int ,int *) ;

__attribute__((used)) static void get_condition_code(TW_IDENTITY *appid, TW_IDENTITY *source, TW_STATUS *status)
{
    TW_UINT16 rc;
    rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_STATUS, MSG_GET, status);
    ok(rc == TWRC_SUCCESS, "Condition code not available, rc %d\n", rc);
}
