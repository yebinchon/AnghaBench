#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock_out; int /*<<< orphan*/  p_buffers; TYPE_2__* p_encoder; int /*<<< orphan*/  picture_pool_has_room; int /*<<< orphan*/  pp_pics; scalar_t__ b_abort; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ transcode_encoder_t ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_6__ {int /*<<< orphan*/ * (* pf_encode_video ) (TYPE_2__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void* FUNC12( void *obj )
{
    transcode_encoder_t *p_enc = obj;
    picture_t *p_pic = NULL;
    int canc = FUNC10 ();
    block_t *p_block = NULL;

    FUNC7( &p_enc->lock_out );

    for( ;; )
    {
        while( !p_enc->b_abort &&
               (p_pic = FUNC2( p_enc->pp_pics )) == NULL )
            FUNC6( &p_enc->cond, &p_enc->lock_out );
        FUNC11( &p_enc->picture_pool_has_room );

        if( p_pic )
        {
            /* release lock while encoding */
            FUNC8( &p_enc->lock_out );
            p_block = p_enc->p_encoder->pf_encode_video( p_enc->p_encoder, p_pic );
            FUNC1( p_pic );
            FUNC7( &p_enc->lock_out );

            FUNC0( &p_enc->p_buffers, p_block );
        }

        if( p_enc->b_abort )
            break;
    }

    /*Encode what we have in the buffer on closing*/
    while( (p_pic = FUNC2( p_enc->pp_pics )) != NULL )
    {
        FUNC11( &p_enc->picture_pool_has_room );
        p_block = p_enc->p_encoder->pf_encode_video( p_enc->p_encoder, p_pic );
        FUNC1( p_pic );
        FUNC0( &p_enc->p_buffers, p_block );
    }

    /*Now flush encoder*/
    do {
        p_block = p_enc->p_encoder->pf_encode_video(p_enc->p_encoder, NULL );
        FUNC0( &p_enc->p_buffers, p_block );
    } while( p_block );

    FUNC8( &p_enc->lock_out );

    FUNC9 (canc);

    return NULL;
}