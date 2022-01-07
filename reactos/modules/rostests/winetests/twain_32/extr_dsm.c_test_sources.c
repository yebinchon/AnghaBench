
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int source ;
struct TYPE_12__ {int Info; int MinorNum; int MajorNum; } ;
struct TYPE_14__ {int ProductName; int ProductFamily; int Manufacturer; int SupportedGroups; int ProtocolMinor; int ProtocolMajor; TYPE_1__ Version; } ;
struct TYPE_13__ {scalar_t__ ConditionCode; } ;
typedef scalar_t__ TW_UINT16 ;
typedef TYPE_2__ TW_STATUS ;
typedef TYPE_3__ TW_IDENTITY ;


 int DAT_IDENTITY ;
 int DG_CONTROL ;
 int MSG_CLOSEDS ;
 int MSG_GETDEFAULT ;
 int MSG_GETFIRST ;
 int MSG_GETNEXT ;
 int MSG_OPENDS ;
 int MSG_USERSELECT ;
 scalar_t__ TWCC_NODS ;
 scalar_t__ TWCC_SUCCESS ;
 scalar_t__ TWRC_CANCEL ;
 scalar_t__ TWRC_ENDOFLIST ;
 scalar_t__ TWRC_FAILURE ;
 scalar_t__ TWRC_SUCCESS ;
 int get_condition_code (TYPE_3__*,int *,TYPE_2__*) ;
 int memset (TYPE_3__*,int ,int) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;
 scalar_t__ pDSM_Entry (TYPE_3__*,int *,int ,int ,int ,TYPE_3__*) ;
 int test_single_source (TYPE_3__*,TYPE_3__*) ;
 int trace (char*,...) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_sources(TW_IDENTITY *appid)
{
    TW_UINT16 rc;
    TW_IDENTITY source;
    TW_STATUS status;
    int scannercount = 0;

    memset(&source, 0, sizeof(source));
    rc = pDSM_Entry(appid, ((void*)0), DG_CONTROL, DAT_IDENTITY, MSG_GETFIRST, &source);
    get_condition_code(appid, ((void*)0), &status);
    ok( (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS) ||
        (rc == TWRC_FAILURE && status.ConditionCode == TWCC_NODS),
            "Get first invalid condition code, rc %d, cc %d\n", rc, status.ConditionCode);

    while (rc == TWRC_SUCCESS)
    {
        scannercount++;
        trace("[Scanner %d|Version %d.%d(%s)|Protocol %d.%d|SupportedGroups 0x%x|Manufacturer %s|Family %s|ProductName %s]\n",
            scannercount,
            source.Version.MajorNum, source.Version.MinorNum, source.Version.Info,
            source.ProtocolMajor, source.ProtocolMinor, source.SupportedGroups,
            source.Manufacturer, source.ProductFamily, source.ProductName);
        memset(&source, 0, sizeof(source));
        rc = pDSM_Entry(appid, ((void*)0), DG_CONTROL, DAT_IDENTITY, MSG_GETNEXT, &source);
        get_condition_code(appid, ((void*)0), &status);
        ok(rc == TWRC_SUCCESS || rc == TWRC_ENDOFLIST, "Get next source failed, rc %d, cc %d\n", rc, status.ConditionCode);
    }

    memset(&source, 0, sizeof(source));
    rc = pDSM_Entry(appid, ((void*)0), DG_CONTROL, DAT_IDENTITY, MSG_GETDEFAULT, &source);
    get_condition_code(appid, ((void*)0), &status);
    ok( (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS) ||
        (rc == TWRC_FAILURE && status.ConditionCode == TWCC_NODS),
            "Get default invalid condition code, rc %d, cc %d\n", rc, status.ConditionCode);


    if (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS && winetest_interactive)
    {
        rc = pDSM_Entry(appid, ((void*)0), DG_CONTROL, DAT_IDENTITY, MSG_OPENDS, &source);
        get_condition_code(appid, ((void*)0), &status);

        if (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS)
        {
            rc = pDSM_Entry(appid, ((void*)0), DG_CONTROL, DAT_IDENTITY, MSG_CLOSEDS, &source);
            get_condition_code(appid, ((void*)0), &status);
            ok(rc == TWRC_SUCCESS, "Close DS Failed, rc %d, cc %d\n", rc, status.ConditionCode);
        }
    }

    if (winetest_interactive)
    {
        trace("Interactive, so trying userselect\n");
        memset(&source, 0, sizeof(source));
        rc = pDSM_Entry(appid, ((void*)0), DG_CONTROL, DAT_IDENTITY, MSG_USERSELECT, &source);
        get_condition_code(appid, ((void*)0), &status);
        ok(rc == TWRC_SUCCESS || rc == TWRC_CANCEL, "Userselect failed, rc %d, cc %d\n", rc, status.ConditionCode);

        if (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS)
        {
            rc = pDSM_Entry(appid, ((void*)0), DG_CONTROL, DAT_IDENTITY, MSG_OPENDS, &source);
            get_condition_code(appid, ((void*)0), &status);
            if (rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS)
            {
                test_single_source(appid, &source);
                rc = pDSM_Entry(appid, ((void*)0), DG_CONTROL, DAT_IDENTITY, MSG_CLOSEDS, &source);
                get_condition_code(appid, ((void*)0), &status);
                ok(rc == TWRC_SUCCESS, "Close DS Failed, rc %d, cc %d\n", rc, status.ConditionCode);
            }
        }
    }

}
