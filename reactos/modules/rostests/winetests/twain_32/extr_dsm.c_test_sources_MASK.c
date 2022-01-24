#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  source ;
struct TYPE_12__ {int /*<<< orphan*/  Info; int /*<<< orphan*/  MinorNum; int /*<<< orphan*/  MajorNum; } ;
struct TYPE_14__ {int /*<<< orphan*/  ProductName; int /*<<< orphan*/  ProductFamily; int /*<<< orphan*/  Manufacturer; int /*<<< orphan*/  SupportedGroups; int /*<<< orphan*/  ProtocolMinor; int /*<<< orphan*/  ProtocolMajor; TYPE_1__ Version; } ;
struct TYPE_13__ {scalar_t__ ConditionCode; } ;
typedef  scalar_t__ TW_UINT16 ;
typedef  TYPE_2__ TW_STATUS ;
typedef  TYPE_3__ TW_IDENTITY ;

/* Variables and functions */
 int /*<<< orphan*/  DAT_IDENTITY ; 
 int /*<<< orphan*/  DG_CONTROL ; 
 int /*<<< orphan*/  MSG_CLOSEDS ; 
 int /*<<< orphan*/  MSG_GETDEFAULT ; 
 int /*<<< orphan*/  MSG_GETFIRST ; 
 int /*<<< orphan*/  MSG_GETNEXT ; 
 int /*<<< orphan*/  MSG_OPENDS ; 
 int /*<<< orphan*/  MSG_USERSELECT ; 
 scalar_t__ TWCC_NODS ; 
 scalar_t__ TWCC_SUCCESS ; 
 scalar_t__ TWRC_CANCEL ; 
 scalar_t__ TWRC_ENDOFLIST ; 
 scalar_t__ TWRC_FAILURE ; 
 scalar_t__ TWRC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC6(TW_IDENTITY *appid)
{
    TW_UINT16 rc;
    TW_IDENTITY source;
    TW_STATUS status;
    int scannercount = 0;

    FUNC1(&source, 0, sizeof(source));
    rc = FUNC3(appid, NULL, DG_CONTROL, DAT_IDENTITY, MSG_GETFIRST, &source);
    FUNC0(appid, NULL, &status);
    FUNC2( (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS) ||
        (rc == TWRC_FAILURE && status.ConditionCode == TWCC_NODS),
            "Get first invalid condition code, rc %d, cc %d\n", rc, status.ConditionCode);

    while (rc == TWRC_SUCCESS)
    {
        scannercount++;
        FUNC5("[Scanner %d|Version %d.%d(%s)|Protocol %d.%d|SupportedGroups 0x%x|Manufacturer %s|Family %s|ProductName %s]\n",
            scannercount,
            source.Version.MajorNum, source.Version.MinorNum, source.Version.Info,
            source.ProtocolMajor, source.ProtocolMinor, source.SupportedGroups,
            source.Manufacturer, source.ProductFamily, source.ProductName);
        FUNC1(&source, 0, sizeof(source));
        rc = FUNC3(appid, NULL, DG_CONTROL, DAT_IDENTITY, MSG_GETNEXT, &source);
        FUNC0(appid, NULL, &status);
        FUNC2(rc == TWRC_SUCCESS || rc == TWRC_ENDOFLIST, "Get next source failed, rc %d, cc %d\n", rc, status.ConditionCode);
    }

    FUNC1(&source, 0, sizeof(source));
    rc = FUNC3(appid, NULL, DG_CONTROL, DAT_IDENTITY, MSG_GETDEFAULT, &source);
    FUNC0(appid, NULL, &status);
    FUNC2( (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS) ||
        (rc == TWRC_FAILURE && status.ConditionCode == TWCC_NODS),
            "Get default invalid condition code, rc %d, cc %d\n", rc, status.ConditionCode);

    /* A DS might display a Popup during MSG_OPENDS, when the scanner is not connected */
    if (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS && winetest_interactive)
    {
        rc = FUNC3(appid, NULL, DG_CONTROL, DAT_IDENTITY, MSG_OPENDS, &source);
        FUNC0(appid, NULL, &status);

        if (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS)
        {
            rc = FUNC3(appid, NULL, DG_CONTROL, DAT_IDENTITY, MSG_CLOSEDS, &source);
            FUNC0(appid, NULL, &status);
            FUNC2(rc == TWRC_SUCCESS, "Close DS Failed, rc %d, cc %d\n", rc, status.ConditionCode);
        }
    }

    if (winetest_interactive)
    {
        FUNC5("Interactive, so trying userselect\n");
        FUNC1(&source, 0, sizeof(source));
        rc = FUNC3(appid, NULL, DG_CONTROL, DAT_IDENTITY, MSG_USERSELECT, &source);
        FUNC0(appid, NULL, &status);
        FUNC2(rc == TWRC_SUCCESS || rc == TWRC_CANCEL, "Userselect failed, rc %d, cc %d\n", rc, status.ConditionCode);

        if (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS)
        {
            rc = FUNC3(appid, NULL, DG_CONTROL, DAT_IDENTITY, MSG_OPENDS, &source);
            FUNC0(appid, NULL, &status);
            if (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS)
            {
                FUNC4(appid, &source);
                rc = FUNC3(appid, NULL, DG_CONTROL, DAT_IDENTITY, MSG_CLOSEDS, &source);
                FUNC0(appid, NULL, &status);
                FUNC2(rc == TWRC_SUCCESS, "Close DS Failed, rc %d, cc %d\n", rc, status.ConditionCode);
            }
        }
    }

}