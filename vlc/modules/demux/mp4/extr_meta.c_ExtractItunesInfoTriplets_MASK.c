#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_t ;
struct TYPE_10__ {TYPE_1__* p_binary; } ;
struct TYPE_11__ {scalar_t__ i_type; TYPE_2__ data; } ;
struct TYPE_9__ {int i_blob; scalar_t__ p_blob; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 scalar_t__ ATOM_ITUN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 char* FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC7( vlc_meta_t *p_meta, MP4_Box_t *p_box )
{
    if( p_box->i_type != ATOM_ITUN )
        return;
    MP4_Box_t *p_mean = FUNC2( p_box, "mean" );
    MP4_Box_t *p_name = FUNC2( p_box, "name" );
    MP4_Box_t *p_data = FUNC2( p_box, "data" );
    if( !p_mean || p_mean->data.p_binary->i_blob < 4 + 16 ||
        !p_name || p_name->data.p_binary->i_blob < 5 ||
        !p_data || !FUNC0(p_data) )
        return;

    if( !FUNC4( &((char*)p_mean->data.p_binary->p_blob)[4], "com.apple.iTunes",
                  p_mean->data.p_binary->i_blob - 4 ) )
    {
        char *psz_name = FUNC5( &((char*)p_name->data.p_binary->p_blob)[4],
                                 p_name->data.p_binary->i_blob - 4 );
        char *psz_value = FUNC1( p_data );
        if( psz_name && psz_value )
            FUNC6( p_meta, psz_name, psz_value );
        FUNC3( psz_name );
        FUNC3( psz_value );
    }
}