
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int drives; int insert_dot_dot; } ;
struct TYPE_4__ {char const* entry; int * wdir; TYPE_1__ u; } ;
typedef TYPE_2__ vlc_DIR ;
struct _wdirent {int d_name; } ;
typedef int DWORD ;
typedef int DIR ;


 char const* FromWide (int ) ;
 struct _wdirent* _wreaddir (int *) ;
 int asprintf (char const**,char*,char) ;
 int assert (int) ;
 int free (char const*) ;
 char const* strdup (char*) ;

const char *vlc_readdir (DIR *dir)
{
    vlc_DIR *p_dir = (vlc_DIR *)dir;

    free(p_dir->entry);



    if (p_dir->wdir == ((void*)0))
    {
        DWORD drives = p_dir->u.drives;
        if (drives == 0)
        {
            p_dir->entry = ((void*)0);
            return ((void*)0);
        }

        unsigned int i;
        for (i = 0; !(drives & 1); i++)
            drives >>= 1;
        p_dir->u.drives &= ~(1UL << i);
        assert (i < 26);

        if (asprintf (&p_dir->entry, "%c:\\", 'A' + i) == -1)
            p_dir->entry = ((void*)0);
    }
    else

    if (p_dir->u.insert_dot_dot)
    {

        p_dir->u.insert_dot_dot = 0;
        p_dir->entry = strdup ("..");
    }
    else
    {
        struct _wdirent *ent = _wreaddir (p_dir->wdir);
        p_dir->entry = (ent != ((void*)0)) ? FromWide (ent->d_name) : ((void*)0);
    }
    return p_dir->entry;
}
