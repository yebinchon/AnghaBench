#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  orig_value ;
typedef  int /*<<< orphan*/  default_value ;
typedef  int /*<<< orphan*/  cap ;
struct TYPE_13__ {int Cap; int /*<<< orphan*/  hContainer; void* ConType; } ;
struct TYPE_12__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {scalar_t__ MinValue; scalar_t__ MaxValue; scalar_t__ StepSize; scalar_t__ CurrentValue; int /*<<< orphan*/  DefaultValue; int /*<<< orphan*/  ItemType; } ;
struct TYPE_10__ {scalar_t__ ConditionCode; } ;
typedef  scalar_t__ TW_UINT32 ;
typedef  int TW_UINT16 ;
typedef  TYPE_1__ TW_STATUS ;
typedef  TYPE_2__ TW_RANGE ;
typedef  int TW_INT32 ;
typedef  int /*<<< orphan*/  TW_IDENTITY ;
typedef  TYPE_3__ TW_FIX32 ;
typedef  TYPE_4__ TW_CAPABILITY ;

/* Variables and functions */
 int /*<<< orphan*/  DAT_CAPABILITY ; 
 int /*<<< orphan*/  DG_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_GET ; 
 int /*<<< orphan*/  MSG_GETCURRENT ; 
 int /*<<< orphan*/  MSG_GETDEFAULT ; 
 int /*<<< orphan*/  MSG_QUERYSUPPORT ; 
 int /*<<< orphan*/  MSG_RESET ; 
 int /*<<< orphan*/  MSG_SET ; 
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
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,...) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC11(TW_IDENTITY *appid, TW_IDENTITY *source, TW_UINT16 captype, TW_INT32 minimum_support)
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

    FUNC7(&cap, 0, sizeof(cap));
    cap.Cap = captype;
    cap.ConType = TWON_DONTCARE16;

    rc = FUNC9(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_QUERYSUPPORT, &cap);
    FUNC4(appid, source, &status);
    FUNC8(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
            "Error [rc %d|cc %d] doing MSG_QUERYSUPPORT for type 0x%x\n", rc, status.ConditionCode, captype);
    if (rc != TWRC_SUCCESS)
        return;
    FUNC8(FUNC5(cap.hContainer, (TW_UINT32 *) &actual_support, NULL), "Returned cap.hContainer invalid for QuerySupport on type 0x%x\n", captype);
    FUNC8((actual_support & minimum_support) == minimum_support,
            "Error:  minimum support 0x%x for type 0x%x, got 0x%x\n", minimum_support,
            captype, actual_support);


    if (actual_support & TWQC_GETCURRENT)
    {
        FUNC7(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC9(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GETCURRENT, &cap);
        FUNC4(appid, source, &status);
        FUNC8(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GETCURRENT for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
        {
            FUNC5(cap.hContainer, &val, &type);
            FUNC8(type == TWTY_FIX32, "GETCURRENT for RESOLUTION is not type FIX32, is type %d\n", type);
            FUNC6(&orig_value, &val, sizeof(orig_value));
            FUNC0(cap.hContainer);
        }
    }

    if (actual_support & TWQC_GETDEFAULT)
    {
        FUNC7(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC9(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GETDEFAULT, &cap);
        FUNC4(appid, source, &status);
        FUNC8(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GETDEFAULT for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
        {
            FUNC5(cap.hContainer, &val, &type);
            FUNC8(type == TWTY_FIX32, "GETDEFAULT for RESOLUTION is not type FIX32, is type %d\n", type);
            FUNC6(&default_value, &val, sizeof(default_value));
            FUNC0(cap.hContainer);
        }
    }

    if (actual_support & TWQC_GET)
    {
        FUNC7(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC9(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GET, &cap);
        FUNC4(appid, source, &status);
        FUNC8(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GET for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
        {
            TW_RANGE *range;
            FUNC8(cap.ConType == TWON_RANGE, "MSG_GET for ICAP_[XY]RESOLUTION did not return TWON_RANGE, but %d\n", cap.ConType);
            range = FUNC1(cap.hContainer);
            FUNC10("MSG_GET of 0x%x returned [ItemType %d|MinValue %d|MaxValue %d|StepSize %d|DefaultValue %d|CurrentValue %d]:\n",
                    cap.Cap, range->ItemType, range->MinValue, range->MaxValue, range->StepSize,
                    range->DefaultValue, range->CurrentValue);
            for (new_value = range->MinValue; new_value < range->MaxValue; new_value += range->StepSize)
                if (new_value != range->CurrentValue)
                    break;
            FUNC2(cap.hContainer);
            FUNC0(cap.hContainer);
        }
    }

    if (actual_support & TWQC_SET)
    {
        FUNC7(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_ONEVALUE;
        cap.hContainer = FUNC3(new_value, TWTY_FIX32);

        rc = FUNC9(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_SET, &cap);
        FUNC4(appid, source, &status);
        FUNC8(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_SET for type 0x%x\n", rc, status.ConditionCode, captype);
        FUNC0(cap.hContainer);

    }

    if (actual_support & TWQC_RESET)
    {
        FUNC7(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC9(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_RESET, &cap);
        FUNC4(appid, source, &status);
        FUNC8(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_RESET for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
            FUNC0(cap.hContainer);
    }
}