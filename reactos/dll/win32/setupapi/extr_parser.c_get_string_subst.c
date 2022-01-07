
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {unsigned int nb_lines; struct line* lines; int name; } ;
struct line {int key_field; size_t first_field; int nb_fields; } ;
struct inf_file {int strings_section; unsigned int nb_sections; struct field* fields; struct section** sections; } ;
struct field {char* text; } ;
typedef char WCHAR ;
typedef int TCHAR ;
typedef int Lang ;
typedef scalar_t__ BOOL ;


 int GetLocaleInfo (int ,int ,int *,int) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,char*) ;
 int LOCALE_ILANGUAGE ;
 int LOCALE_SYSTEM_DEFAULT ;
 char* get_dirid_subst (struct inf_file const*,int,unsigned int*) ;
 int memcpy (char*,char const*,unsigned int) ;
 int strcmpiW (int ,char*) ;
 int strcpyW (char*,int *) ;
 unsigned int strlenW (char*) ;
 scalar_t__ strncmpiW (char const*,char*,unsigned int) ;
 int strtolW (char*,char**,int) ;

__attribute__((used)) static const WCHAR *get_string_subst( const struct inf_file *file, const WCHAR *str, unsigned int *len,
                                      BOOL no_trailing_slash )
{
    static const WCHAR percent = '%';

    struct section *strings_section;
    struct line *line;
    struct field *field;
    unsigned int i, j;
    int dirid;
    WCHAR *dirid_str, *end;
    const WCHAR *ret = ((void*)0);
    WCHAR StringLangId[13] = {'S','t','r','i','n','g','s','.',0};
    TCHAR Lang[5];

    if (!*len)
    {
        *len = 1;
        return &percent;
    }
    if (file->strings_section == -1) goto not_found;
    strings_section = file->sections[file->strings_section];
    for (j = 0, line = strings_section->lines; j < strings_section->nb_lines; j++, line++)
    {
        if (line->key_field == -1) continue;
        if (strncmpiW( str, file->fields[line->key_field].text, *len )) continue;
        if (!file->fields[line->key_field].text[*len]) break;
    }
    if (j == strings_section->nb_lines || !line->nb_fields) goto not_found;
    field = &file->fields[line->first_field];
    GetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_ILANGUAGE, Lang, sizeof(Lang)/sizeof(TCHAR));

    strcpyW(StringLangId + 8, Lang + 2);

    for (i = 0; i < file->nb_sections; i++)
    {
        if (!strcmpiW(file->sections[i]->name,StringLangId))
        {
            strings_section = file->sections[i];
            for (j = 0, line = strings_section->lines; j < strings_section->nb_lines; j++, line++)
            {
                if (line->key_field == -1) continue;
                if (strncmpiW( str, file->fields[line->key_field].text, *len )) continue;
                if (!file->fields[line->key_field].text[*len])
                {
                    field = &file->fields[line->first_field];
                    break;
                }
            }
        }
    }

    strcpyW(StringLangId + 8, Lang);

    for (i = 0; i < file->nb_sections; i++)
    {
        if (!strcmpiW(file->sections[i]->name,StringLangId))
        {
            strings_section = file->sections[i];
            for (j = 0, line = strings_section->lines; j < strings_section->nb_lines; j++, line++)
            {
                if (line->key_field == -1) continue;
                if (strncmpiW( str, file->fields[line->key_field].text, *len )) continue;
                if (!file->fields[line->key_field].text[*len])
                {
                    field = &file->fields[line->first_field];
                    break;
                }
            }
        }
    }
    *len = strlenW( field->text );
    ret = field->text;
    return ret;


 not_found:
    if ((dirid_str = HeapAlloc( GetProcessHeap(), 0, (*len+1) * sizeof(WCHAR) )))
    {
        memcpy( dirid_str, str, *len * sizeof(WCHAR) );
        dirid_str[*len] = 0;
        dirid = strtolW( dirid_str, &end, 10 );
        if (!*end) ret = get_dirid_subst( file, dirid, len );
        if (no_trailing_slash && ret && *len && ret[*len - 1] == '\\') *len -= 1;
        HeapFree( GetProcessHeap(), 0, dirid_str );
        return ret;
    }
    return ((void*)0);
}
