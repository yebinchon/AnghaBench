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
struct TYPE_3__ {char* psz_eng_name; char* psz_iso639_1; char* psz_iso639_2T; char* psz_iso639_2B; } ;
typedef  TYPE_1__ iso639_lang_t ;

/* Variables and functions */
 TYPE_1__* p_languages ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2( const char *psz_lang )
{
    const iso639_lang_t *pl;

    if( psz_lang == NULL || *psz_lang == '\0' )
        return FUNC1("??");

    for( pl = p_languages; pl->psz_eng_name != NULL; pl++ )
    {
        if( !FUNC0( pl->psz_eng_name, psz_lang ) ||
            !FUNC0( pl->psz_iso639_1, psz_lang ) ||
            !FUNC0( pl->psz_iso639_2T, psz_lang ) ||
            !FUNC0( pl->psz_iso639_2B, psz_lang ) )
            return FUNC1( pl->psz_iso639_1 );
    }

    return FUNC1("??");
}