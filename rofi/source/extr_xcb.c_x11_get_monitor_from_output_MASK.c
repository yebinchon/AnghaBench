#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_randr_output_t ;
struct TYPE_11__ {scalar_t__ crtc; int /*<<< orphan*/  mm_height; int /*<<< orphan*/  mm_width; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ xcb_randr_get_output_info_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_output_info_cookie_t ;
typedef  TYPE_1__ xcb_randr_get_crtc_info_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_crtc_info_cookie_t ;
struct TYPE_12__ {void* name; int /*<<< orphan*/  mh; int /*<<< orphan*/  mw; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_3__ workarea ;
struct TYPE_13__ {int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  XCB_CURRENT_TIME ; 
 scalar_t__ XCB_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int) ; 
 TYPE_8__* xcb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static workarea * FUNC9 ( xcb_randr_output_t out )
{
    xcb_randr_get_output_info_reply_t  *op_reply;
    xcb_randr_get_crtc_info_reply_t    *crtc_reply;
    xcb_randr_get_output_info_cookie_t it = FUNC5 ( xcb->connection, out, XCB_CURRENT_TIME );
    op_reply = FUNC8 ( xcb->connection, it, NULL );
    if ( op_reply->crtc == XCB_NONE ) {
        FUNC0 ( op_reply );
        return NULL;
    }
    xcb_randr_get_crtc_info_cookie_t ct = FUNC3 ( xcb->connection, op_reply->crtc, XCB_CURRENT_TIME );
    crtc_reply = FUNC4 ( xcb->connection, ct, NULL );
    if ( !crtc_reply ) {
        FUNC0 ( op_reply );
        return NULL;
    }
    workarea *retv = FUNC1 ( sizeof ( workarea ) );
    retv->x = crtc_reply->x;
    retv->y = crtc_reply->y;
    retv->w = crtc_reply->width;
    retv->h = crtc_reply->height;

    retv->mw = op_reply->mm_width;
    retv->mh = op_reply->mm_height;

    char *tname    = (char *) FUNC6 ( op_reply );
    int  tname_len = FUNC7 ( op_reply );

    retv->name = FUNC1 ( ( tname_len + 1 ) * sizeof ( char ) );
    FUNC2 ( retv->name, tname, tname_len );

    FUNC0 ( crtc_reply );
    FUNC0 ( op_reply );
    return retv;
}