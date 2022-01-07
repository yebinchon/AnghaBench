
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cap ;
struct TYPE_7__ {int hContainer; void* ConType; void* Cap; } ;
struct TYPE_6__ {scalar_t__ ConditionCode; } ;
typedef int TW_UINT32 ;
typedef void* TW_UINT16 ;
typedef TYPE_1__ TW_STATUS ;
typedef int TW_INT32 ;
typedef int TW_IDENTITY ;
typedef TYPE_2__ TW_CAPABILITY ;


 int DAT_CAPABILITY ;
 int DG_CONTROL ;
 int GlobalFree (int ) ;
 int MSG_GET ;
 int MSG_GETCURRENT ;
 int MSG_GETDEFAULT ;
 int MSG_QUERYSUPPORT ;
 scalar_t__ TWCC_SUCCESS ;
 void* TWON_DONTCARE16 ;
 int TWQC_GET ;
 int TWQC_GETCURRENT ;
 int TWQC_GETDEFAULT ;
 void* TWRC_SUCCESS ;
 void* TWTY_FIX32 ;
 int get_condition_code (int *,int *,TYPE_1__*) ;
 int get_onevalue (int ,int *,void**) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,void*,...) ;
 void* pDSM_Entry (int *,int *,int ,int ,int ,TYPE_2__*) ;
 int trace (char*,void*,int ) ;

__attribute__((used)) static void test_physical(TW_IDENTITY *appid, TW_IDENTITY *source, TW_UINT16 captype, TW_INT32 minimum_support)
{
    TW_UINT16 rc;
    TW_STATUS status;
    TW_CAPABILITY cap;
    TW_UINT32 val;
    TW_UINT16 type;
    TW_INT32 actual_support;

    memset(&cap, 0, sizeof(cap));
    cap.Cap = captype;
    cap.ConType = TWON_DONTCARE16;

    rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_QUERYSUPPORT, &cap);
    get_condition_code(appid, source, &status);
    ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
            "Error [rc %d|cc %d] doing MSG_QUERYSUPPORT for type 0x%x\n", rc, status.ConditionCode, captype);
    if (rc != TWRC_SUCCESS)
        return;
    ok(get_onevalue(cap.hContainer, (TW_UINT32 *) &actual_support, ((void*)0)), "Returned cap.hContainer invalid for QuerySupport on type 0x%x\n", captype);
    ok((actual_support & minimum_support) == minimum_support,
            "Error:  minimum support 0x%x for type 0x%x, got 0x%x\n", minimum_support,
            captype, actual_support);


    if (actual_support & TWQC_GETCURRENT)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GETCURRENT, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GETCURRENT for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
        {
            get_onevalue(cap.hContainer, &val, &type);
            ok(type == TWTY_FIX32, "GETCURRENT for PHYSICALXXX is not type FIX32, is type %d\n", type);
            GlobalFree(cap.hContainer);
        }
    }

    if (actual_support & TWQC_GETDEFAULT)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GETDEFAULT, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GETDEFAULT for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
        {
            get_onevalue(cap.hContainer, &val, &type);
            ok(type == TWTY_FIX32, "GETDEFAULT for PHYSICALXXX is not type FIX32, is type %d\n", type);
            GlobalFree(cap.hContainer);
        }
    }

    if (actual_support & TWQC_GET)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GET, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GET for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
        {
            get_onevalue(cap.hContainer, &val, &type);
            ok(type == TWTY_FIX32, "GET for PHYSICALXXX is not type FIX32, is type %d\n", type);
            trace("GET for Physical type 0x%x returns 0x%x\n", captype, val);
            GlobalFree(cap.hContainer);
        }
    }

}
