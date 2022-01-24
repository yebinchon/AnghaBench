#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {char* str; } ;
typedef  TYPE_1__ GString ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_MSG_MARKUP ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (char*) ; 
 int /*<<< orphan*/  list_of_error_msgs ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9 ()
{
    GString *emesg = FUNC6 ( "The following errors were detected when starting rofi:\n" );
    GList   *iter  = FUNC0 ( list_of_error_msgs );
    int     index  = 0;
    for (; iter != NULL && index < 2; iter = FUNC2 ( iter ) ) {
        GString *msg = (GString *) ( iter->data );
        FUNC3 ( emesg, "\n\n" );
        FUNC3 ( emesg, msg->str );
        index++;
    }
    if ( FUNC1 ( iter ) > 1 ) {
        FUNC4 ( emesg, "\nThere are <b>%d</b> more errors.", FUNC1 ( iter ) - 1 );
    }
    FUNC8 ( emesg->str, ERROR_MSG_MARKUP );
    FUNC5 ( emesg, TRUE );
    FUNC7 ( EX_DATAERR );

}