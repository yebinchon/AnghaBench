#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
typedef  int /*<<< orphan*/  input_attachment_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_4__ {int i_attachment; int /*<<< orphan*/  p_es_out; TYPE_1__* p_item; int /*<<< orphan*/ ** attachment_demux; int /*<<< orphan*/ * attachment; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ **,int /*<<< orphan*/ ***,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEMUX_GET_ATTACHMENTS ; 
 int /*<<< orphan*/  DEMUX_GET_META ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10( input_thread_t *p_input, demux_t *p_demux )
{
    vlc_meta_t *p_meta = FUNC7();
    if( FUNC4(p_meta == NULL) )
        return;

    FUNC1( p_demux, DEMUX_GET_META, p_meta );

    /* If metadata changed, then the attachments might have changed.
       We need to update them in case they contain album art. */
    input_attachment_t **attachment;
    int i_attachment;

    if( !FUNC1( p_demux, DEMUX_GET_ATTACHMENTS,
                        &attachment, &i_attachment ) )
    {
        FUNC8( &FUNC3(p_input)->p_item->lock );
        if( FUNC3(p_input)->i_attachment > 0 )
        {
            int j = 0;
            for( int i = 0; i < FUNC3(p_input)->i_attachment; i++ )
            {
                if( FUNC3(p_input)->attachment_demux[i] == p_demux )
                    FUNC5( FUNC3(p_input)->attachment[i] );
                else
                {
                    FUNC3(p_input)->attachment[j] = FUNC3(p_input)->attachment[i];
                    FUNC3(p_input)->attachment_demux[j] = FUNC3(p_input)->attachment_demux[i];
                    j++;
                }
            }
            FUNC3(p_input)->i_attachment = j;
        }
        FUNC0( &FUNC3(p_input)->i_attachment, &FUNC3(p_input)->attachment, &FUNC3(p_input)->attachment_demux,
                          i_attachment, attachment, p_demux );
        FUNC9( &FUNC3(p_input)->p_item->lock );
    }

    FUNC2( FUNC3(p_input)->p_es_out, p_meta );
    FUNC6( p_meta );
}