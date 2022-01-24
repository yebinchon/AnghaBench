#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int type; } ;
typedef  TYPE_1__ XrmOption ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
#define  xrm_Boolean 132 
#define  xrm_Char 131 
#define  xrm_Number 130 
#define  xrm_SNumber 129 
#define  xrm_String 128 

__attribute__((used)) static void FUNC5 ( XrmOption *xo, int is_term )
{
    switch ( xo->type )
    {
    case xrm_String:
        FUNC4 ( xo, is_term );
        break;
    case xrm_Number:
        FUNC2 ( xo, is_term );
        break;
    case xrm_SNumber:
        FUNC3 ( xo, is_term );
        break;
    case xrm_Boolean:
        FUNC0 ( xo, is_term );
        break;
    case xrm_Char:
        FUNC1 ( xo, is_term );
        break;
    default:
        break;
    }
}