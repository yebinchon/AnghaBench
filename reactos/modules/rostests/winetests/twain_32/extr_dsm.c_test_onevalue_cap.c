
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int cap ;
struct TYPE_8__ {int Cap; int hContainer; void* ConType; } ;
struct TYPE_7__ {int ConditionCode; } ;
typedef int TW_UINT32 ;
typedef int TW_UINT16 ;
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
 int MSG_RESET ;
 int MSG_SET ;
 int TWCC_SUCCESS ;
 void* TWON_DONTCARE16 ;
 void* TWON_ONEVALUE ;
 int TWQC_GET ;
 int TWQC_GETCURRENT ;
 int TWQC_GETDEFAULT ;
 int TWQC_RESET ;
 int TWQC_SET ;
 int TWRC_SUCCESS ;
 int alloc_and_set_onevalue (int ,int) ;
 int check_get (TYPE_2__*,int,int ,int ,int *) ;
 int get_condition_code (int *,int *,TYPE_1__*) ;
 int get_onevalue (int ,int *,int*) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,int,...) ;
 int pDSM_Entry (int *,int *,int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static void test_onevalue_cap(TW_IDENTITY *appid, TW_IDENTITY *source, TW_UINT16 captype, TW_UINT16 type, TW_INT32 minimum_support)
{
    TW_UINT16 rc;
    TW_UINT16 rtype;
    TW_STATUS status;
    TW_CAPABILITY cap;
    TW_UINT32 orig_value = 0;
    TW_UINT32 new_value;
    TW_UINT32 default_value = 0;
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
            ok(get_onevalue(cap.hContainer, &orig_value, &rtype), "Returned cap.hContainer invalid for GETCURRENT on type 0x%x\n", captype);
            ok(rtype == type, "Returned GETCURRENT type 0x%x for cap 0x%x is not expected 0x%x\n", rtype, captype, type);
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
            ok(get_onevalue(cap.hContainer, &default_value, &rtype), "Returned cap.hContainer invalid for GETDEFAULT on type 0x%x\n", captype);
            ok(rtype == type, "Returned GETDEFAULT type 0x%x for cap 0x%x is not expected 0x%x\n", rtype, captype, type);
            GlobalFree(cap.hContainer);
        }
    }

    new_value = orig_value;
    if (actual_support & TWQC_GET)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GET, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GET for type 0x%x\n", rc, status.ConditionCode, captype);
        check_get(&cap, actual_support, orig_value, default_value, &new_value);
        if (rc == TWRC_SUCCESS)
            GlobalFree(cap.hContainer);
    }

    if (actual_support & TWQC_SET)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_ONEVALUE;
        cap.hContainer = alloc_and_set_onevalue(new_value, type);

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_SET, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_SET for type 0x%x\n", rc, status.ConditionCode, captype);
        GlobalFree(cap.hContainer);
    }

    if (actual_support & TWQC_RESET)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_RESET, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_RESET for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
            GlobalFree(cap.hContainer);
    }
}
