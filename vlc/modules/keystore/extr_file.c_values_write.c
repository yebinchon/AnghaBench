
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned int KEY_MAX ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ fprintf (int *,char*,char*,char*,char const*) ;
 int free (char*) ;
 char** ppsz_keys ;
 char* vlc_b64_encode (char const* const) ;

__attribute__((used)) static int
values_write(FILE *p_file, const char *const ppsz_values[KEY_MAX])
{
    for (unsigned int i = 0; i < KEY_MAX; ++i)
    {
        if (!ppsz_values[i])
            continue;
        char *psz_b64 = vlc_b64_encode(ppsz_values[i]);
        if (!psz_b64)
            return VLC_EGENERIC;
        const char *psz_end_sep = "";
        for (unsigned int j = i + 1; j < KEY_MAX; ++j)
        {
            if (ppsz_values[j])
            {
                psz_end_sep = ",";
                break;
            }
        }
        if (fprintf(p_file, "%s:%s%s", ppsz_keys[i], psz_b64, psz_end_sep) < 0)
        {
            free(psz_b64);
            return VLC_EGENERIC;
        }
        free(psz_b64);
    }

    return VLC_SUCCESS;
}
