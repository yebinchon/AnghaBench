#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cap ;
struct TYPE_8__ {int /*<<< orphan*/  hContainer; void* ConType; void* Cap; } ;
struct TYPE_7__ {int ConditionCode; } ;
typedef  int /*<<< orphan*/  TW_UINT32 ;
typedef  int TW_UINT16 ;
typedef  TYPE_1__ TW_STATUS ;
typedef  int TW_INT32 ;
typedef  int /*<<< orphan*/  TW_IDENTITY ;
typedef  TYPE_2__ TW_CAPABILITY ;

/* Variables and functions */
 int /*<<< orphan*/  DAT_CAPABILITY ; 
 int /*<<< orphan*/  DG_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* ICAP_SUPPORTEDSIZES ; 
 int /*<<< orphan*/  MSG_GET ; 
 int /*<<< orphan*/  MSG_GETCURRENT ; 
 int /*<<< orphan*/  MSG_GETDEFAULT ; 
 int /*<<< orphan*/  MSG_QUERYSUPPORT ; 
 int /*<<< orphan*/  MSG_RESET ; 
 int /*<<< orphan*/  MSG_SET ; 
 int TWCC_SUCCESS ; 
 void* TWON_DONTCARE16 ; 
 void* TWON_ONEVALUE ; 
 int TWQC_GET ; 
 int TWQC_GETCURRENT ; 
 int TWQC_GETDEFAULT ; 
 int TWQC_RESET ; 
 int TWQC_SET ; 
 int TWRC_SUCCESS ; 
 int /*<<< orphan*/  TWSS_NONE ; 
 int TWTY_UINT16 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(TW_IDENTITY *appid, TW_IDENTITY *source, TW_INT32 minimum_support)
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


    FUNC5(&cap, 0, sizeof(cap));
    cap.Cap = ICAP_SUPPORTEDSIZES;
    cap.ConType = TWON_DONTCARE16;

    rc = FUNC7(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_QUERYSUPPORT, &cap);
    FUNC3(appid, source, &status);
    FUNC6(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
            "Error [rc %d|cc %d] doing MSG_QUERYSUPPORT for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
    if (rc != TWRC_SUCCESS)
        return;
    FUNC6(FUNC4(cap.hContainer, (TW_UINT32 *) &actual_support, NULL), "Returned cap.hContainer invalid for QuerySupport on ICAP_SUPPORTEDSIZES\n");
    FUNC6((actual_support & minimum_support) == minimum_support,
            "Error:  minimum support 0x%x for ICAP_SUPPORTEDSIZES, got 0x%x\n", minimum_support, actual_support);

    if (actual_support & TWQC_GETCURRENT)
    {
        FUNC5(&cap, 0, sizeof(cap));
        cap.Cap = ICAP_SUPPORTEDSIZES;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC7(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GETCURRENT, &cap);
        FUNC3(appid, source, &status);
        FUNC6(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GETCURRENT for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
        if (rc == TWRC_SUCCESS)
        {
            FUNC4(cap.hContainer, &val, &type);
            FUNC6(type == TWTY_UINT16, "GETCURRENT for ICAP_SUPPORTEDSIZES is not type UINT16, is type %d\n", type);
            FUNC8("Current size is %d\n", val);
            FUNC0(cap.hContainer);
            orig_value = val;
        }
    }

    if (actual_support & TWQC_GETDEFAULT)
    {
        FUNC5(&cap, 0, sizeof(cap));
        cap.Cap = ICAP_SUPPORTEDSIZES;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC7(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GETDEFAULT, &cap);
        FUNC3(appid, source, &status);
        FUNC6(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GETDEFAULT for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
        if (rc == TWRC_SUCCESS)
        {
            FUNC4(cap.hContainer, &val, &type);
            FUNC6(type == TWTY_UINT16, "GETDEFAULT for PHYSICALXXX is not type TWTY_UINT16, is type %d\n", type);
            FUNC8("Default size is %d\n", val);
            FUNC0(cap.hContainer);
            default_value = val;
        }
    }

    if (actual_support & TWQC_GET)
    {
        FUNC5(&cap, 0, sizeof(cap));
        cap.Cap = ICAP_SUPPORTEDSIZES;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC7(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GET, &cap);
        FUNC3(appid, source, &status);
        FUNC6(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GET for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
        FUNC2(&cap, actual_support, orig_value, default_value, &new_value);
    }

    if (actual_support & TWQC_SET)
    {
        FUNC5(&cap, 0, sizeof(cap));
        cap.Cap = ICAP_SUPPORTEDSIZES;
        cap.ConType = TWON_ONEVALUE;
        cap.hContainer = FUNC1(new_value, TWTY_UINT16);

        rc = FUNC7(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_SET, &cap);
        FUNC3(appid, source, &status);
        FUNC6(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_SET for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
        FUNC0(cap.hContainer);

    }

    if (actual_support & TWQC_RESET)
    {
        FUNC5(&cap, 0, sizeof(cap));
        cap.Cap = ICAP_SUPPORTEDSIZES;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC7(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_RESET, &cap);
        FUNC3(appid, source, &status);
        FUNC6(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_RESET for ICAP_SUPPORTEDSIZES\n", rc, status.ConditionCode);
        if (rc == TWRC_SUCCESS)
            FUNC0(cap.hContainer);
    }
}