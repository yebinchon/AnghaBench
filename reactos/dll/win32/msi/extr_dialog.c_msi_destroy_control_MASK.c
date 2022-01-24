#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ hDll; struct TYPE_4__* type; struct TYPE_4__* tabnext; scalar_t__ hIcon; scalar_t__ hBitmap; struct TYPE_4__* value; struct TYPE_4__* property; int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ msi_control ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5( msi_control *t )
{
    FUNC3( &t->entry );
    /* leave dialog->hwnd - destroying parent destroys child windows */
    FUNC4( t->property );
    FUNC4( t->value );
    if( t->hBitmap )
        FUNC0( t->hBitmap );
    if( t->hIcon )
        FUNC1( t->hIcon );
    FUNC4( t->tabnext );
    FUNC4( t->type );
    if (t->hDll)
        FUNC2( t->hDll );
    FUNC4( t );
}