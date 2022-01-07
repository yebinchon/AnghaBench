
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int orig_value ;
typedef int default_value ;
typedef int cap ;
struct TYPE_13__ {int Cap; int hContainer; void* ConType; } ;
struct TYPE_12__ {int member_1; int member_0; } ;
struct TYPE_11__ {scalar_t__ MinValue; scalar_t__ MaxValue; scalar_t__ StepSize; scalar_t__ CurrentValue; int DefaultValue; int ItemType; } ;
struct TYPE_10__ {scalar_t__ ConditionCode; } ;
typedef scalar_t__ TW_UINT32 ;
typedef int TW_UINT16 ;
typedef TYPE_1__ TW_STATUS ;
typedef TYPE_2__ TW_RANGE ;
typedef int TW_INT32 ;
typedef int TW_IDENTITY ;
typedef TYPE_3__ TW_FIX32 ;
typedef TYPE_4__ TW_CAPABILITY ;


 int DAT_CAPABILITY ;
 int DG_CONTROL ;
 int GlobalFree (int ) ;
 TYPE_2__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int MSG_GET ;
 int MSG_GETCURRENT ;
 int MSG_GETDEFAULT ;
 int MSG_QUERYSUPPORT ;
 int MSG_RESET ;
 int MSG_SET ;
 scalar_t__ TWCC_SUCCESS ;
 void* TWON_DONTCARE16 ;
 void* TWON_ONEVALUE ;
 void* TWON_RANGE ;
 int TWQC_GET ;
 int TWQC_GETCURRENT ;
 int TWQC_GETDEFAULT ;
 int TWQC_RESET ;
 int TWQC_SET ;
 int TWRC_SUCCESS ;
 int TWTY_FIX32 ;
 int alloc_and_set_onevalue (scalar_t__,int) ;
 int get_condition_code (int *,int *,TYPE_1__*) ;
 int get_onevalue (int ,scalar_t__*,int*) ;
 int memcpy (TYPE_3__*,scalar_t__*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int ok (int,char*,int,...) ;
 int pDSM_Entry (int *,int *,int ,int ,int ,TYPE_4__*) ;
 int trace (char*,int,int ,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void test_resolution(TW_IDENTITY *appid, TW_IDENTITY *source, TW_UINT16 captype, TW_INT32 minimum_support)
{
    TW_UINT16 rc;
    TW_STATUS status;
    TW_CAPABILITY cap;
    TW_UINT32 val;
    TW_UINT16 type;
    TW_INT32 actual_support;
    TW_FIX32 orig_value = { 0, 0 };
    TW_UINT32 new_value = 0;
    TW_FIX32 default_value = { 0, 0 };

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
            ok(type == TWTY_FIX32, "GETCURRENT for RESOLUTION is not type FIX32, is type %d\n", type);
            memcpy(&orig_value, &val, sizeof(orig_value));
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
            ok(type == TWTY_FIX32, "GETDEFAULT for RESOLUTION is not type FIX32, is type %d\n", type);
            memcpy(&default_value, &val, sizeof(default_value));
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
            TW_RANGE *range;
            ok(cap.ConType == TWON_RANGE, "MSG_GET for ICAP_[XY]RESOLUTION did not return TWON_RANGE, but %d\n", cap.ConType);
            range = GlobalLock(cap.hContainer);
            trace("MSG_GET of 0x%x returned [ItemType %d|MinValue %d|MaxValue %d|StepSize %d|DefaultValue %d|CurrentValue %d]:\n",
                    cap.Cap, range->ItemType, range->MinValue, range->MaxValue, range->StepSize,
                    range->DefaultValue, range->CurrentValue);
            for (new_value = range->MinValue; new_value < range->MaxValue; new_value += range->StepSize)
                if (new_value != range->CurrentValue)
                    break;
            GlobalUnlock(cap.hContainer);
            GlobalFree(cap.hContainer);
        }
    }

    if (actual_support & TWQC_SET)
    {
        memset(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_ONEVALUE;
        cap.hContainer = alloc_and_set_onevalue(new_value, TWTY_FIX32);

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
