
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int cap ;
struct TYPE_8__ {int hContainer; void* ConType; void* Cap; } ;
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
 void* ICAP_SUPPORTEDSIZES ;
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
 int TWSS_NONE ;
 int TWTY_UINT16 ;
 int alloc_and_set_onevalue (int ,int) ;
 int check_get (TYPE_2__*,int,int ,int ,int *) ;
 int get_condition_code (int *,int *,TYPE_1__*) ;
 int get_onevalue (int ,int *,int*) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,...) ;
 int pDSM_Entry (int *,int *,int ,int ,int ,TYPE_2__*) ;
 int trace (char*,int ) ;

__attribute__((used)) static void test_supported_sizes(TW_IDENTITY *appid, TW_IDENTITY *source, TW_INT32 minimum_support)
{
    TW_UINT16 rc;
    TW_STATUS status;
    TW_CAPABILITY cap;
    TW_UINT32 val;
    TW_UINT16 type;
    TW_INT32 actual_support;
    TW_UINT32 orig_value = TWSS_NONE;
    TW_UINT32 default_value = TWSS_NONE;
    TW_UINT32 new_value = TWSS_NONE;


    memset(&cap, 0, sizeof(cap));
    cap.Cap = ICAP_SUPPORTEDSIZES;
    cap.ConType = TWON_DONTCARE16;

    rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_QUERYSUPPORT, &cap);
    get_condition_code(appid, source, &status);
    ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
            "Error [rc %d|cc %d] doing MSG_QUERYSUPPORT for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
    if (rc != TWRC_SUCCESS)
        return;
    ok(get_onevalue(cap.hContainer, (TW_UINT32 *) &actual_support, ((void*)0)), "Returned cap.hContainer invalid for QuerySupport on ICAP_SUPPORTEDSIZES\n");
    ok((actual_support & minimum_support) == minimum_support,
            "Error:  minimum support 0x%x for ICAP_SUPPORTEDSIZES, got 0x%x\n", minimum_support, actual_support);

    if (actual_support & TWQC_GETCURRENT)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = ICAP_SUPPORTEDSIZES;
        cap.ConType = TWON_DONTCARE16;

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GETCURRENT, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GETCURRENT for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
        if (rc == TWRC_SUCCESS)
        {
            get_onevalue(cap.hContainer, &val, &type);
            ok(type == TWTY_UINT16, "GETCURRENT for ICAP_SUPPORTEDSIZES is not type UINT16, is type %d\n", type);
            trace("Current size is %d\n", val);
            GlobalFree(cap.hContainer);
            orig_value = val;
        }
    }

    if (actual_support & TWQC_GETDEFAULT)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = ICAP_SUPPORTEDSIZES;
        cap.ConType = TWON_DONTCARE16;

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GETDEFAULT, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GETDEFAULT for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
        if (rc == TWRC_SUCCESS)
        {
            get_onevalue(cap.hContainer, &val, &type);
            ok(type == TWTY_UINT16, "GETDEFAULT for PHYSICALXXX is not type TWTY_UINT16, is type %d\n", type);
            trace("Default size is %d\n", val);
            GlobalFree(cap.hContainer);
            default_value = val;
        }
    }

    if (actual_support & TWQC_GET)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = ICAP_SUPPORTEDSIZES;
        cap.ConType = TWON_DONTCARE16;

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GET, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GET for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
        check_get(&cap, actual_support, orig_value, default_value, &new_value);
    }

    if (actual_support & TWQC_SET)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = ICAP_SUPPORTEDSIZES;
        cap.ConType = TWON_ONEVALUE;
        cap.hContainer = alloc_and_set_onevalue(new_value, TWTY_UINT16);

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_SET, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_SET for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
        GlobalFree(cap.hContainer);

    }

    if (actual_support & TWQC_RESET)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = ICAP_SUPPORTEDSIZES;
        cap.ConType = TWON_DONTCARE16;

        rc = pDSM_Entry(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_RESET, &cap);
        get_condition_code(appid, source, &status);
        ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_RESET for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
        if (rc == TWRC_SUCCESS)
            GlobalFree(cap.hContainer);
    }
}
