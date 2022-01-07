
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ USHORT ;
typedef scalar_t__ LANGID ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int VerQueryValueW (void const*,int ,void**,int*) ;
 int msi_free (scalar_t__*) ;
 scalar_t__* parse_languages (int const*,int*) ;
 int szLangResource ;

__attribute__((used)) static BOOL match_languages( const void *version, const WCHAR *languages )
{
    struct lang
    {
        USHORT id;
        USHORT codepage;
    } *lang;
    DWORD len, num_ids, i, j;
    BOOL found = FALSE;
    LANGID *ids;

    if (!languages || !languages[0]) return TRUE;
    if (!VerQueryValueW( version, szLangResource, (void **)&lang, &len )) return FALSE;
    if (!(ids = parse_languages( languages, &num_ids ))) return FALSE;

    for (i = 0; i < num_ids; i++)
    {
        found = FALSE;
        for (j = 0; j < len / sizeof(struct lang); j++)
        {
            if (!ids[i] || ids[i] == lang[j].id) found = TRUE;
        }
        if (!found) goto done;
    }

done:
    msi_free( ids );
    return found;
}
