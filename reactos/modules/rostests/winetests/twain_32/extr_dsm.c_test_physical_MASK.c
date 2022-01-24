#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cap ;
struct TYPE_7__ {int /*<<< orphan*/  hContainer; void* ConType; void* Cap; } ;
struct TYPE_6__ {scalar_t__ ConditionCode; } ;
typedef  int /*<<< orphan*/  TW_UINT32 ;
typedef  void* TW_UINT16 ;
typedef  TYPE_1__ TW_STATUS ;
typedef  int TW_INT32 ;
typedef  int /*<<< orphan*/  TW_IDENTITY ;
typedef  TYPE_2__ TW_CAPABILITY ;

/* Variables and functions */
 int /*<<< orphan*/  DAT_CAPABILITY ; 
 int /*<<< orphan*/  DG_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_GET ; 
 int /*<<< orphan*/  MSG_GETCURRENT ; 
 int /*<<< orphan*/  MSG_GETDEFAULT ; 
 int /*<<< orphan*/  MSG_QUERYSUPPORT ; 
 scalar_t__ TWCC_SUCCESS ; 
 void* TWON_DONTCARE16 ; 
 int TWQC_GET ; 
 int TWQC_GETCURRENT ; 
 int TWQC_GETDEFAULT ; 
 void* TWRC_SUCCESS ; 
 void* TWTY_FIX32 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,void*,...) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(TW_IDENTITY *appid, TW_IDENTITY *source, TW_UINT16 captype, TW_INT32 minimum_support)
{
    TW_UINT16 rc;
    TW_STATUS status;
    TW_CAPABILITY cap;
    TW_UINT32 val;
    TW_UINT16 type;
    TW_INT32 actual_support;

    FUNC3(&cap, 0, sizeof(cap));
    cap.Cap = captype;
    cap.ConType = TWON_DONTCARE16;

    rc = FUNC5(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_QUERYSUPPORT, &cap);
    FUNC1(appid, source, &status);
    FUNC4(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
            "Error [rc %d|cc %d] doing MSG_QUERYSUPPORT for type 0x%x\n", rc, status.ConditionCode, captype);
    if (rc != TWRC_SUCCESS)
        return;
    FUNC4(FUNC2(cap.hContainer, (TW_UINT32 *) &actual_support, NULL), "Returned cap.hContainer invalid for QuerySupport on type 0x%x\n", captype);
    FUNC4((actual_support & minimum_support) == minimum_support,
            "Error:  minimum support 0x%x for type 0x%x, got 0x%x\n", minimum_support,
            captype, actual_support);


    if (actual_support & TWQC_GETCURRENT)
    {
        FUNC3(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC5(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GETCURRENT, &cap);
        FUNC1(appid, source, &status);
        FUNC4(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GETCURRENT for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
        {
            FUNC2(cap.hContainer, &val, &type);
            FUNC4(type == TWTY_FIX32, "GETCURRENT for PHYSICALXXX is not type FIX32, is type %d\n", type);
            FUNC0(cap.hContainer);
        }
    }

    if (actual_support & TWQC_GETDEFAULT)
    {
        FUNC3(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC5(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GETDEFAULT, &cap);
        FUNC1(appid, source, &status);
        FUNC4(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GETDEFAULT for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
        {
            FUNC2(cap.hContainer, &val, &type);
            FUNC4(type == TWTY_FIX32, "GETDEFAULT for PHYSICALXXX is not type FIX32, is type %d\n", type);
            FUNC0(cap.hContainer);
        }
    }

    if (actual_support & TWQC_GET)
    {
        FUNC3(&cap, 0, sizeof(cap));
        cap.Cap = captype;
        cap.ConType = TWON_DONTCARE16;

        rc = FUNC5(appid, source, DG_CONTROL, DAT_CAPABILITY, MSG_GET, &cap);
        FUNC1(appid, source, &status);
        FUNC4(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
                "Error [rc %d|cc %d] doing MSG_GET for type 0x%x\n", rc, status.ConditionCode, captype);
        if (rc == TWRC_SUCCESS)
        {
            FUNC2(cap.hContainer, &val, &type);
            FUNC4(type == TWTY_FIX32, "GET for PHYSICALXXX is not type FIX32, is type %d\n", type);
            FUNC6("GET for Physical type 0x%x returns 0x%x\n", captype, val);
            FUNC0(cap.hContainer);
        }
    }

}