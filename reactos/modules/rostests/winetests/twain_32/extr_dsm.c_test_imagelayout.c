
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int layout ;
struct TYPE_14__ {int Whole; int Frac; } ;
struct TYPE_13__ {int Whole; int Frac; } ;
struct TYPE_12__ {int Whole; int Frac; } ;
struct TYPE_11__ {int Whole; int Frac; } ;
struct TYPE_15__ {TYPE_4__ Bottom; TYPE_3__ Right; TYPE_2__ Top; TYPE_1__ Left; } ;
struct TYPE_17__ {int FrameNumber; int PageNumber; int DocumentNumber; TYPE_5__ Frame; } ;
struct TYPE_16__ {scalar_t__ ConditionCode; } ;
typedef scalar_t__ TW_UINT16 ;
typedef TYPE_6__ TW_STATUS ;
typedef TYPE_7__ TW_IMAGELAYOUT ;
typedef int TW_IDENTITY ;


 int DAT_IMAGELAYOUT ;
 int DG_IMAGE ;
 int MSG_GET ;
 int MSG_SET ;
 scalar_t__ TWCC_SUCCESS ;
 scalar_t__ TWRC_SUCCESS ;
 int get_condition_code (int *,int *,TYPE_6__*) ;
 int memset (TYPE_7__*,int ,int) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;
 scalar_t__ pDSM_Entry (int *,int *,int ,int ,int ,TYPE_7__*) ;
 int trace (char*,int,int ,int,int ,int,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static void test_imagelayout(TW_IDENTITY *appid, TW_IDENTITY *source)
{
    TW_UINT16 rc;
    TW_STATUS status;
    TW_IMAGELAYOUT layout;

    rc = pDSM_Entry(appid, source, DG_IMAGE, DAT_IMAGELAYOUT, MSG_GET, &layout);
    get_condition_code(appid, source, &status);
    ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
            "Error [rc %d|cc %d] doing MSG_GET for DG_IMAGE/DAT_IMAGELAYOUT\n", rc, status.ConditionCode);
    if (rc != TWRC_SUCCESS)
        return;
    trace("ImageLayout [Left %x.%x|Top %x.%x|Right %x.%x|Bottom %x.%x|Document %d|Page %d|Frame %d]\n",
            layout.Frame.Left.Whole, layout.Frame.Left.Frac,
            layout.Frame.Top.Whole, layout.Frame.Top.Frac,
            layout.Frame.Right.Whole, layout.Frame.Right.Frac,
            layout.Frame.Bottom.Whole, layout.Frame.Bottom.Frac,
            layout.DocumentNumber, layout.PageNumber, layout.FrameNumber);

    memset(&layout, 0, sizeof(layout));
    layout.Frame.Left.Whole = 1;
    layout.Frame.Right.Whole = 2;
    layout.Frame.Top.Whole = 1;
    layout.Frame.Bottom.Whole = 2;
    rc = pDSM_Entry(appid, source, DG_IMAGE, DAT_IMAGELAYOUT, MSG_SET, &layout);
    get_condition_code(appid, source, &status);
    ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
            "Error [rc %d|cc %d] doing MSG_SET for DG_IMAGE/DAT_IMAGELAYOUT\n", rc, status.ConditionCode);
    if (rc != TWRC_SUCCESS)
        return;

    rc = pDSM_Entry(appid, source, DG_IMAGE, DAT_IMAGELAYOUT, MSG_GET, &layout);
    get_condition_code(appid, source, &status);
    ok(rc == TWRC_SUCCESS && status.ConditionCode == TWCC_SUCCESS,
            "Error [rc %d|cc %d] doing MSG_GET for DG_IMAGE/DAT_IMAGELAYOUT\n", rc, status.ConditionCode);
    if (rc != TWRC_SUCCESS)
        return;
    trace("ImageLayout after set [Left %x.%x|Top %x.%x|Right %x.%x|Bottom %x.%x|Document %d|Page %d|Frame %d]\n",
            layout.Frame.Left.Whole, layout.Frame.Left.Frac,
            layout.Frame.Top.Whole, layout.Frame.Top.Frac,
            layout.Frame.Right.Whole, layout.Frame.Right.Frac,
            layout.Frame.Bottom.Whole, layout.Frame.Bottom.Frac,
            layout.DocumentNumber, layout.PageNumber, layout.FrameNumber);
}
