#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gsize ;
struct TYPE_5__ {int /*<<< orphan*/  cancel; int /*<<< orphan*/  input_stream; int /*<<< orphan*/  data_input_stream; int /*<<< orphan*/  separator; } ;
typedef  TYPE_1__ DmenuModePrivateData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_PRIORITY_LOW ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  async_close_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 ( DmenuModePrivateData *pd )
{
    while  ( TRUE ) {
        gsize len   = 0;
        char  *data = FUNC2 ( pd->data_input_stream, &( pd->separator ), 1, &len, NULL, NULL );
        if ( data == NULL ) {
            break;
        }
        FUNC1 ( pd->data_input_stream, NULL, NULL );
        FUNC5 ( pd, data, len );
        FUNC3 ( data );
    }
    FUNC4 ( FUNC0 ( pd->input_stream ), G_PRIORITY_LOW, pd->cancel, async_close_callback, pd );
}