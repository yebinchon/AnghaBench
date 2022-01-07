
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const* const*) ;

 int * bsearch (char const*,char const* const*,int ,int,int ) ;
 int bsearch_strcmp_cb ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static bool input_item_IsMaster(const char *psz_filename)
{
    static const char *const ppsz_master_exts[] = { 128 };

    const char *psz_ext = strrchr(psz_filename, '.');
    if (psz_ext == ((void*)0) || *(++psz_ext) == '\0')
        return 0;

    return bsearch(psz_ext, ppsz_master_exts, ARRAY_SIZE(ppsz_master_exts),
                   sizeof(const char *), bsearch_strcmp_cb) != ((void*)0);
}
