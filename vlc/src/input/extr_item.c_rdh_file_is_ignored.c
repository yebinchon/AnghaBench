
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_readdir_helper {int psz_ignored_exts; int b_show_hiddenfiles; } ;


 scalar_t__ rdh_file_has_ext (char const*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool rdh_file_is_ignored(struct vlc_readdir_helper *p_rdh,
                                const char *psz_filename)
{
    return (psz_filename[0] == '\0'
         || strcmp(psz_filename, ".") == 0
         || strcmp(psz_filename, "..") == 0
         || (!p_rdh->b_show_hiddenfiles && psz_filename[0] == '.')
         || rdh_file_has_ext(psz_filename, p_rdh->psz_ignored_exts));
}
