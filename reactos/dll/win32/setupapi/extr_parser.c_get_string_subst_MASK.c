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
struct section {unsigned int nb_lines; struct line* lines; int /*<<< orphan*/  name; } ;
struct line {int key_field; size_t first_field; int /*<<< orphan*/  nb_fields; } ;
struct inf_file {int strings_section; unsigned int nb_sections; struct field* fields; struct section** sections; } ;
struct field {char* text; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  Lang ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LOCALE_ILANGUAGE ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 char* FUNC4 (struct inf_file const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char const*,char*,unsigned int) ; 
 int FUNC10 (char*,char**,int) ; 

__attribute__((used)) static const WCHAR *FUNC11( const struct inf_file *file, const WCHAR *str, unsigned int *len,
                                      BOOL no_trailing_slash )
{
    static const WCHAR percent = '%';

    struct section *strings_section;
    struct line *line;
    struct field *field;
    unsigned int i, j;
    int dirid;
    WCHAR *dirid_str, *end;
    const WCHAR *ret = NULL;
    WCHAR StringLangId[13] = {'S','t','r','i','n','g','s','.',0};
    TCHAR Lang[5];

    if (!*len)  /* empty string (%%) is replaced by single percent */
    {
        *len = 1;
        return &percent;
    }
    if (file->strings_section == -1) goto not_found;
    strings_section = file->sections[file->strings_section];
    for (j = 0, line = strings_section->lines; j < strings_section->nb_lines; j++, line++)
    {
        if (line->key_field == -1) continue;
        if (FUNC9( str, file->fields[line->key_field].text, *len )) continue;
        if (!file->fields[line->key_field].text[*len]) break;
    }
    if (j == strings_section->nb_lines || !line->nb_fields) goto not_found;
    field = &file->fields[line->first_field];
    FUNC0(LOCALE_SYSTEM_DEFAULT, LOCALE_ILANGUAGE, Lang, sizeof(Lang)/sizeof(TCHAR)); // get the current system locale for translated strings

    FUNC7(StringLangId + 8, Lang + 2);
    // now you have e.g. Strings.07 for german neutral translations
    for (i = 0; i < file->nb_sections; i++) // search in all sections
    {
        if (!FUNC6(file->sections[i]->name,StringLangId)) // if the section is a Strings.* section
        {
            strings_section = file->sections[i]; // select this section for further use
            for (j = 0, line = strings_section->lines; j < strings_section->nb_lines; j++, line++) // process all lines in this section
            {
                if (line->key_field == -1) continue; // if no key then skip
                if (FUNC9( str, file->fields[line->key_field].text, *len )) continue; // if wrong key name, then skip
                if (!file->fields[line->key_field].text[*len]) // if value exist
                {
                    field = &file->fields[line->first_field]; // then extract value and
                    break; // no more search necessary
                }
            }
        }
    }

    FUNC7(StringLangId + 8, Lang); // append the Language identifier from GetLocaleInfo
    // now you have e.g. Strings.0407 for german translations
    for (i = 0; i < file->nb_sections; i++) // search in all sections
    {
        if (!FUNC6(file->sections[i]->name,StringLangId)) // if the section is a Strings.* section
        {
            strings_section = file->sections[i]; // select this section for further use
            for (j = 0, line = strings_section->lines; j < strings_section->nb_lines; j++, line++) // process all lines in this section
            {
                if (line->key_field == -1) continue; // if no key then skip
                if (FUNC9( str, file->fields[line->key_field].text, *len )) continue; // if wrong key name, then skip
                if (!file->fields[line->key_field].text[*len]) // if value exist
                {
                    field = &file->fields[line->first_field]; // then extract value and
                    break; // no more search necessary
                }
            }
        }
    }
    *len = FUNC8( field->text ); // set length
    ret = field->text; // return the english or translated string
    return ret;


 not_found:  /* check for integer id */
    if ((dirid_str = FUNC2( FUNC1(), 0, (*len+1) * sizeof(WCHAR) )))
    {
        FUNC5( dirid_str, str, *len * sizeof(WCHAR) );
        dirid_str[*len] = 0;
        dirid = FUNC10( dirid_str, &end, 10 );
        if (!*end) ret = FUNC4( file, dirid, len );
        if (no_trailing_slash && ret && *len && ret[*len - 1] == '\\') *len -= 1;
        FUNC3( FUNC1(), 0, dirid_str );
        return ret;
    }
    return NULL;
}