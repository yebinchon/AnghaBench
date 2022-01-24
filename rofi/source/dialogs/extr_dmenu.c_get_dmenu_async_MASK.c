#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gsize ;
struct TYPE_6__ {int /*<<< orphan*/  cancel; int /*<<< orphan*/  separator; int /*<<< orphan*/  data_input_stream; int /*<<< orphan*/  input_stream; } ;
typedef  TYPE_1__ DmenuModePrivateData ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_PRIORITY_LOW ; 
 int TRUE ; 
 int /*<<< orphan*/  async_close_callback ; 
 int /*<<< orphan*/  async_read_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 ( DmenuModePrivateData *pd, int sync_pre_read )
{
    while ( sync_pre_read-- ) {
        gsize len   = 0;
        char  *data = FUNC2 ( pd->data_input_stream, &( pd->separator ), 1, &len, NULL, NULL );
        if ( data == NULL ) {
            FUNC5 ( FUNC0 ( pd->input_stream ), G_PRIORITY_LOW, pd->cancel, async_close_callback, pd );
            return FALSE;
        }
        FUNC1 ( pd->data_input_stream, NULL, NULL );
        FUNC6 ( pd, data, len );
        FUNC4 ( data );
    }
    FUNC3 ( pd->data_input_stream, &( pd->separator ), 1, G_PRIORITY_LOW, pd->cancel,
                                          async_read_callback, pd );
    return TRUE;
}