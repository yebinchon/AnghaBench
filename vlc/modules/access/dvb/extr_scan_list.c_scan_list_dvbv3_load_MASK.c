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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int ssize_t ;
struct TYPE_6__ {scalar_t__ delivery; int /*<<< orphan*/  inner_fec; void* i_rate; int /*<<< orphan*/  polarization; void* i_freq; } ;
typedef  TYPE_1__ scan_list_entry_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ SCAN_DELIVERY_DVB_S ; 
 scalar_t__ SCAN_DELIVERY_DVB_S2 ; 
 int /*<<< orphan*/  SCAN_POLARIZATION_HORIZONTAL ; 
 int /*<<< orphan*/  SCAN_POLARIZATION_VERTICAL ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 TYPE_1__* FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_1__***,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char*,char const*,char**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char*) ; 

scan_list_entry_t * FUNC12( vlc_object_t *p_obj, const char *psz_source, size_t *pi_count )
{
    FILE *p_file = FUNC11( psz_source, "r" );
    if( !p_file )
    {
        FUNC3( p_obj, "failed to open satellite file (%s)", psz_source );
        return NULL;
    }

    scan_list_entry_t *p_list = NULL;
    scan_list_entry_t **pp_list_last = &p_list;
    scan_list_entry_t *p_entry = NULL;
    *pi_count = 0;

    const char *psz_delims = " \t";

    char *psz_line = NULL;
    size_t i_len = 0;
    ssize_t i_read;

    while ( (i_read = FUNC2( &psz_line, &i_len, p_file )) != -1 )
    {
        char *psz_token;
        char *p_save = NULL;

        if( p_entry && FUNC5( &pp_list_last, p_entry ) )
            (*pi_count)++;

        p_entry = FUNC4();
        if( FUNC10(p_entry == NULL) )
            continue;

        /* DELIVERY */
        if( !(psz_token = FUNC9( psz_line, psz_delims, &p_save )) )
            continue;

        if( !FUNC8( psz_token, "S" ) )
        {
            p_entry->delivery = SCAN_DELIVERY_DVB_S;
        }
        else if( !FUNC8( psz_token, "S2" ) )
        {
            p_entry->delivery = SCAN_DELIVERY_DVB_S2;
        }

        /* Parse the delivery format */
        if( p_entry->delivery == SCAN_DELIVERY_DVB_S || p_entry->delivery == SCAN_DELIVERY_DVB_S2 )
        {
            /* FREQUENCY */
            if( !(psz_token = FUNC9( NULL, psz_delims, &p_save )) )
                continue;
            p_entry->i_freq = FUNC0( psz_token );

            /* POLARIZATION */
            if( !(psz_token = FUNC9( NULL, psz_delims, &p_save )) )
                continue;
            p_entry->polarization = !FUNC7(psz_token, "H") ? SCAN_POLARIZATION_HORIZONTAL
                                                                : SCAN_POLARIZATION_VERTICAL;

            /* RATE */
            if( !(psz_token = FUNC9( NULL, psz_delims, &p_save )) )
                continue;
            p_entry->i_rate = FUNC0( psz_token );

            /* FEC */
            if( !(psz_token = FUNC9( NULL, psz_delims, &p_save )) )
                continue;
            p_entry->inner_fec = FUNC6( psz_token );

            /* INVERSION */
            if( !(psz_token = FUNC9( NULL, psz_delims, &p_save )) )
                continue;

            /* MODULATION */
            if( !(psz_token = FUNC9( NULL, psz_delims, &p_save )) )
                continue;

            /* STREAM_ID */
            if( !(psz_token = FUNC9( NULL, psz_delims, &p_save )) )
                continue;
        }

    }

    if( p_entry && FUNC5( &pp_list_last, p_entry ) )
        (*pi_count)++;

    FUNC1( p_file );

    return p_list;
}