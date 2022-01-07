
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* path; size_t ImageBase; } ;
typedef TYPE_1__ LIST_MEMBER ;


 size_t INVALID_BASE ;
 int cache ;
 char* convert_path (char const*) ;
 TYPE_1__* entry_lookup (int *,char*) ;
 int free (char*) ;
 scalar_t__ get_ImageBase (char*,size_t*) ;
 int l2l_dbg (int,char*,char*) ;
 int process_file (char*,size_t,char*) ;

__attribute__((used)) static int
translate_file(const char *cpath, size_t offset, char *toString)
{
    size_t base = 0;
    LIST_MEMBER *pentry = ((void*)0);
    int res = 0;
    char *path, *dpath;

    dpath = path = convert_path(cpath);
    if (!path)
        return 1;


    if (get_ImageBase(path, &base))
    {
        pentry = entry_lookup(&cache, path);
        if (pentry)
        {
            path = pentry->path;
            base = pentry->ImageBase;
            if (base == INVALID_BASE)
            {
                l2l_dbg(1, "No, or invalid base address: %s\n", path);
                res = 2;
            }
        }
        else
        {
            l2l_dbg(1, "Not found in cache: %s\n", path);
            res = 3;
        }
    }

    if (!res)
    {
        res = process_file(path, offset, toString);
    }

    free(dpath);
    return res;
}
