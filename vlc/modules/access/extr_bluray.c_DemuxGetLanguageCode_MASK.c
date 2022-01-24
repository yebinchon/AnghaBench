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
struct TYPE_3__ {char const* psz_eng_name; char const* psz_iso639_1; char const* psz_iso639_2T; char const* psz_iso639_2B; } ;
typedef  TYPE_1__ iso639_lang_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 char const* LANGUAGE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* p_languages ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static const char *FUNC4( demux_t *p_demux, const char *psz_var )
{
    const iso639_lang_t *pl;
    char *psz_lang;
    char *p;

    psz_lang = FUNC3( p_demux, psz_var );
    if( !psz_lang )
        return LANGUAGE_DEFAULT;

    /* XXX: we will use only the first value
     * (and ignore other ones in case of a list) */
    if( ( p = FUNC2( psz_lang, ',' ) ) )
        *p = '\0';

    for( pl = p_languages; pl->psz_eng_name != NULL; pl++ )
    {
        if( *psz_lang == '\0' )
            continue;
        if( !FUNC1( pl->psz_eng_name, psz_lang ) ||
            !FUNC1( pl->psz_iso639_1, psz_lang ) ||
            !FUNC1( pl->psz_iso639_2T, psz_lang ) ||
            !FUNC1( pl->psz_iso639_2B, psz_lang ) )
            break;
    }

    FUNC0( psz_lang );

    if( pl->psz_eng_name != NULL )
        return pl->psz_iso639_2T;

    return LANGUAGE_DEFAULT;
}