
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strcasestr (char const*,char const*) ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ unlikely (int) ;
 float us_strtof (char*,int *) ;

__attribute__((used)) static bool getRDFFloat(const char *psz_rdf, float *out, const char *psz_var)
{
    char *p_start = strcasestr(psz_rdf, psz_var);
    if (p_start == ((void*)0))
        return 0;

    size_t varlen = strlen(psz_var);
    p_start += varlen;
    char *p_end = ((void*)0);

    if (p_start[0] == '>')
    {
        p_start += 1;
        p_end = strchr(p_start, '<');
    }
    else if (p_start[0] == '=' && p_start[1] == '"')
    {
        p_start += 2;
        p_end = strchr(p_start, '"');
    }
    if (unlikely(p_end == ((void*)0) || p_end == p_start + 1))
        return 0;

    *out = us_strtof(p_start, ((void*)0));
    return 1;
}
