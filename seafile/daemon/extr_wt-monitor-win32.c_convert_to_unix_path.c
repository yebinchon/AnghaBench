
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const wchar_t ;
typedef scalar_t__ gboolean ;


 int g_free (int const*) ;
 char* g_utf16_to_utf8 (int const*,int,int *,int *,int *) ;
 int const* win32_83_path_to_long_path (char const*,int const*,int) ;

__attribute__((used)) static char *
convert_to_unix_path (const char *worktree, const wchar_t *path, int path_len,
                      gboolean convert_long_path)
{
    char *utf8_path = ((void*)0);

    if (convert_long_path) {
        wchar_t *long_path = win32_83_path_to_long_path (worktree,
                                                         path,
                                                         path_len/sizeof(wchar_t));
        if (long_path) {
            utf8_path = g_utf16_to_utf8 (long_path, -1, ((void*)0), ((void*)0), ((void*)0));
            g_free (long_path);
        } else
            utf8_path = g_utf16_to_utf8 (path, path_len/sizeof(wchar_t),
                                         ((void*)0), ((void*)0), ((void*)0));
    } else
        utf8_path = g_utf16_to_utf8 (path, path_len/sizeof(wchar_t), ((void*)0), ((void*)0), ((void*)0));

    if (!utf8_path)
        return ((void*)0);

    char *p;
    for (p = utf8_path; *p != 0; ++p)
        if (*p == '\\')
            *p = '/';

    return utf8_path;
}
