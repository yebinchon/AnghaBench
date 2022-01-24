#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_4__ {int /*<<< orphan*/ * p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 char* FUNC10 (char const*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static void FUNC13( stream_t* p_demux, input_item_t* p_input )
{
    xml_reader_t *p_reader = p_demux->p_sys;
    bool const b_empty = FUNC11( p_reader ) == 1;

    char *psz_meta_name = NULL, *psz_meta_content = NULL;
    char const *psz_attr, *psz_value;
    while( ( psz_attr = FUNC12( p_reader, &psz_value ) ) )
    {
        if( psz_value == NULL )
            continue;

        if( !FUNC9( psz_attr, "name" ) && !psz_meta_name )
            psz_meta_name = FUNC10( psz_value );
        else
            if( !FUNC9( psz_attr, "content" ) && !psz_meta_content )
                psz_meta_content = FUNC10( psz_value );

        if( psz_meta_name && psz_meta_content )
            break;
    }

    if( b_empty == false )
        FUNC2( p_reader, "meta" );

    if( !psz_meta_name || !psz_meta_content )
        goto done;

    if( !FUNC9( psz_meta_name, "TotalDuration" ) )
        FUNC4( p_input, FUNC0("Playlist"), FUNC0("Total duration"),
                            "%lld", FUNC1( psz_meta_content ) );
    else
        if( !FUNC9( psz_meta_name, "Author" ) )
            FUNC6( p_input, psz_meta_content );
    else
        if( !FUNC9( psz_meta_name, "Rating" ) )
            FUNC7( p_input, psz_meta_content );
    else
        if( !FUNC9( psz_meta_name, "Genre" ) )
            FUNC5( p_input, psz_meta_content );
    else
        FUNC8( p_demux, "ignoring unknown meta-attribute %s", psz_meta_name );

done:
    FUNC3( psz_meta_name );
    FUNC3( psz_meta_content );
}