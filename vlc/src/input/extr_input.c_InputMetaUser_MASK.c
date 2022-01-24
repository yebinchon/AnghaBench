#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  int /*<<< orphan*/  input_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
#define  vlc_meta_Artist 134 
#define  vlc_meta_Copyright 133 
#define  vlc_meta_Date 132 
#define  vlc_meta_Description 131 
#define  vlc_meta_Genre 130 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
#define  vlc_meta_Title 129 
#define  vlc_meta_URL 128 

__attribute__((used)) static void FUNC4( input_thread_t *p_input, vlc_meta_t *p_meta )
{
    static const struct { int i_meta; const char *psz_name; } p_list[] = {
        { vlc_meta_Title,       "meta-title" },
        { vlc_meta_Artist,      "meta-artist" },
        { vlc_meta_Genre,       "meta-genre" },
        { vlc_meta_Copyright,   "meta-copyright" },
        { vlc_meta_Description, "meta-description" },
        { vlc_meta_Date,        "meta-date" },
        { vlc_meta_URL,         "meta-url" },
        { 0, NULL }
    };

    /* Get meta information from user */
    for( int i = 0; p_list[i].psz_name; i++ )
    {
        char *psz_string = FUNC2( p_input, p_list[i].psz_name );
        if( !psz_string )
            continue;

        FUNC0( psz_string );
        FUNC3( p_meta, p_list[i].i_meta, psz_string );
        FUNC1( psz_string );
    }
}