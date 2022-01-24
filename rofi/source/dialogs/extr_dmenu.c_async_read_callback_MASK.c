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
typedef  scalar_t__ gpointer ;
struct TYPE_5__ {int /*<<< orphan*/  cancel; int /*<<< orphan*/  separator; int /*<<< orphan*/  data_input_stream; } ;
typedef  int /*<<< orphan*/  GObject ;
typedef  int /*<<< orphan*/  GError ;
typedef  int /*<<< orphan*/  GDataInputStream ;
typedef  int /*<<< orphan*/  GAsyncResult ;
typedef  TYPE_1__ DmenuModePrivateData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  G_PRIORITY_LOW ; 
 int /*<<< orphan*/  async_close_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__),TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13 ( GObject *source_object, GAsyncResult *res, gpointer user_data )
{
    GDataInputStream     *stream = (GDataInputStream *) source_object;
    DmenuModePrivateData *pd     = (DmenuModePrivateData *) user_data;
    gsize                len;
    char                 *data = FUNC4 ( stream, res, &len, NULL );
    if ( data != NULL ) {
        // Absorb separator, already in buffer so should not block.
        FUNC2 ( stream, NULL, NULL );
        FUNC9 ( pd, data, len );
        FUNC7 ( data );
        FUNC11 ();

        FUNC3 ( pd->data_input_stream, &( pd->separator ), 1, G_PRIORITY_LOW, pd->cancel,
                                              async_read_callback, pd );
        return;
    }
    else {
        GError *error = NULL;
        // Absorb separator, already in buffer so should not block.
        // If error == NULL end of stream..
        FUNC2 ( stream, NULL, &error );
        if (  error == NULL ) {
            // Add empty line.
            FUNC9 ( pd, "", 0 );
            FUNC11 ();

            FUNC3 ( pd->data_input_stream, &( pd->separator ), 1, G_PRIORITY_LOW, pd->cancel,
                                                  async_read_callback, pd );
            return;
        }
        else {
            FUNC6 ( error );
        }
    }
    if ( !FUNC1 ( pd->cancel ) ) {
        // Hack, don't use get active.
        FUNC5 ( "Clearing overlay" );
        FUNC12 ( FUNC10 (), NULL );
        FUNC8 ( FUNC0 ( stream ), G_PRIORITY_LOW, pd->cancel, async_close_callback, pd );
    }
}