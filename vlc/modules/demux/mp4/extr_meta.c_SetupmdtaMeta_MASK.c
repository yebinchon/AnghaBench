#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {scalar_t__ i_entry_count; TYPE_1__* p_entries; } ;
struct TYPE_10__ {scalar_t__ i_index; } ;
struct TYPE_9__ {char* psz_value; scalar_t__ i_namespace; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 scalar_t__ const ATOM_udta ; 
 TYPE_7__* FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (TYPE_2__*) ; 
 scalar_t__ const HANDLER_mdta ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC7( vlc_meta_t *p_meta, MP4_Box_t *p_box, MP4_Box_t *p_keys )
{
    if ( !p_keys || !FUNC0(p_keys) || FUNC0(p_keys)->i_entry_count == 0 )
        return;
    if ( !p_box->i_index || p_box->i_index > FUNC0(p_keys)->i_entry_count )
        return;

    const char *psz_naming = FUNC0(p_keys)->p_entries[p_box->i_index - 1].psz_value;
    const uint32_t i_namespace = FUNC0(p_keys)->p_entries[p_box->i_index - 1].i_namespace;

    if( i_namespace == HANDLER_mdta )
    {
        if ( !FUNC6( "com.apple.quicktime.", psz_naming, 20 ) )
            FUNC2( p_meta, 0, psz_naming + 20, p_box );
    }
    else if ( i_namespace == ATOM_udta )
    {
        /* Regular atom inside... could that be even more complex ??? */
        char *psz_utf = FUNC1( p_box );
        if ( psz_utf )
        {
            if ( FUNC5(psz_utf) == 4 )
            {
                FUNC2( p_meta,
                         FUNC3(psz_utf[0],psz_utf[1],psz_utf[2],psz_utf[3]),
                         NULL, p_box );
            }
            FUNC4( psz_utf );
        }
    }
}