#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widget ;
struct TYPE_4__ {int w; int h; } ;
struct TYPE_5__ {scalar_t__ icon_fetch_id; int xalign; int yalign; int /*<<< orphan*/ * icon; TYPE_1__ widget; scalar_t__ size; } ;
typedef  TYPE_2__ icon ;
typedef  int /*<<< orphan*/  cairo_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16 ( widget *wid, cairo_t *draw )
{
    icon *b = (icon *) wid;
    // If no icon is loaded. quit.
    if ( b->icon == NULL && b->icon_fetch_id > 0 ) {
        b->icon = FUNC11 ( b->icon_fetch_id );
        if ( b->icon ) {
            FUNC9 ( b->icon );
        }
    }
    if ( b->icon == NULL  ) {
        return;
    }
    int    iconh = FUNC2 ( b->icon );
    int    iconw = FUNC3 ( b->icon );
    int    icons = FUNC0 ( iconh, iconw );
    double scale = (double) b->size / icons;

    int lpad = FUNC13   ( FUNC1 ( b ) ) ;
    int rpad = FUNC14  ( FUNC1 ( b ) ) ;
    int tpad = FUNC15    ( FUNC1 ( b ) ) ;
    int bpad = FUNC12 ( FUNC1 ( b ) ) ;

    FUNC6 ( draw );

    FUNC10 ( draw,
            lpad + ( b->widget.w - iconw * scale - lpad -rpad )*b->xalign,
            tpad + ( b->widget.h- iconh * scale -tpad - bpad )*b->yalign );
    FUNC7 ( draw, scale, scale );
    FUNC8 ( draw, b->icon, 0, 0 );
    FUNC4 ( draw );
    FUNC5 ( draw );
}