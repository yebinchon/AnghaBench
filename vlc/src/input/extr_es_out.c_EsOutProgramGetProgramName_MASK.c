#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  i_id; scalar_t__ p_meta; } ;
typedef  TYPE_1__ es_out_pgrm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_meta_Title ; 

__attribute__((used)) static char *FUNC4( es_out_pgrm_t *p_pgrm )
{
    char *psz = NULL;
    if( p_pgrm->p_meta && FUNC3( p_pgrm->p_meta, vlc_meta_Title ) )
    {
        return FUNC2( FUNC3( p_pgrm->p_meta, vlc_meta_Title ) );
    }
    else
    {
        if( FUNC1( &psz, "%d %d", FUNC0("Program"), p_pgrm->i_id ) == -1 )
            return NULL;
    }
    return psz;
}