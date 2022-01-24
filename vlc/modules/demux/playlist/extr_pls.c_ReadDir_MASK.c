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
struct TYPE_5__ {int /*<<< orphan*/  psz_url; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int VLC_SUCCESS ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,...) ; 
 int FUNC11 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 char* FUNC13 (char*,char) ; 
 char* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17( stream_t *p_demux, input_item_node_t *p_subitems )
{
    char          *psz_name = NULL;
    char          *psz_line;
    char          *psz_mrl = NULL;
    char          *psz_mrl_orig = NULL;
    char          *psz_key;
    char          *psz_value;
    int            i_item = -1;
    input_item_t *p_input;
    bool ascii = true;
    bool unicode = true;

    while( ( psz_line = FUNC16( p_demux->s ) ) )
    {
        if (ascii && !FUNC1(psz_line))
        {
            unicode = FUNC2(psz_line);
            ascii = false;
        }

        if (!unicode)
        {
            char *latin = FUNC0(psz_line);
            FUNC5(psz_line);
            psz_line = latin;
        }

        if( !FUNC15( psz_line, "[playlist]", sizeof("[playlist]")-1 ) )
        {
            FUNC5( psz_line );
            continue;
        }
        psz_key = psz_line;
        psz_value = FUNC13( psz_line, '=' );
        if( psz_value )
        {
            *psz_value='\0';
            psz_value++;
        }
        else
        {
            FUNC5( psz_line );
            continue;
        }
        if( !FUNC12( psz_key, "version" ) )
        {
            FUNC9( p_demux, "pls file version: %s", psz_value );
            FUNC5( psz_line );
            continue;
        }
        if( !FUNC12( psz_key, "numberofentries" ) )
        {
            FUNC9( p_demux, "pls should have %d entries", FUNC4(psz_value) );
            FUNC5( psz_line);
            continue;
        }

        /* find the number part of of file1, title1 or length1 etc */
        int i_new_item;
        if( FUNC11( psz_key, "%*[^0-9]%d", &i_new_item ) != 1 )
        {
            FUNC10( p_demux, "couldn't find number of items" );
            FUNC5( psz_line );
            continue;
        }

        if( i_item == -1 )
            i_item = i_new_item;
        else if( i_item != i_new_item )
        {
            /* we found a new item, insert the previous */
            if( psz_mrl )
            {
                p_input = FUNC6( psz_mrl, psz_name );
                FUNC8( p_subitems, p_input );
                FUNC7( p_input );
                FUNC5( psz_mrl_orig );
                psz_mrl_orig = psz_mrl = NULL;
            }
            else
            {
                FUNC10( p_demux, "no file= part found for item %d", i_item );
            }
            FUNC5( psz_name );
            psz_name = NULL;
            i_item = i_new_item;
        }

        if( !FUNC15( psz_key, "file", sizeof("file") -1 ) )
        {
            FUNC5( psz_mrl_orig );
            psz_mrl_orig =
            psz_mrl = FUNC3( psz_value, p_demux->psz_url );
        }
        else if( !FUNC15( psz_key, "title", sizeof("title") -1 ) )
        {
            FUNC5( psz_name );
            psz_name = FUNC14( psz_value );
        }
        else if( !FUNC15( psz_key, "length", sizeof("length") -1 ) )
            /* duration in seconds */;
        else
        {
            FUNC10( p_demux, "unknown key found in pls file: %s", psz_key );
        }
        FUNC5( psz_line );
    }
    /* Add last object */
    if( psz_mrl )
    {
        p_input = FUNC6( psz_mrl, psz_name );
        FUNC8( p_subitems, p_input );
        FUNC7( p_input );
        FUNC5( psz_mrl_orig );
    }
    else
    {
        FUNC10( p_demux, "no file= part found for item %d", i_item );
    }
    FUNC5( psz_name );
    psz_name = NULL;

    return VLC_SUCCESS;
}