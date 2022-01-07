
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_2__ {int id; int const* str; } ;


 int DIRID_ABSOLUTE ;
 int DIRID_ABSOLUTE_16BIT ;
 int DIRID_NULL ;
 int DIRID_USER ;
 int MAX_CSIDL_DIRID ;
 int MAX_SYSTEM_DIRID ;
 int MIN_CSIDL_DIRID ;
 int WARN (char*,int) ;
 int * create_system_dirid (int) ;
 int const** csidl_dirids ;
 int * get_csidl_dir (int) ;
 int const* get_unknown_dirid () ;
 int nb_user_dirids ;
 int const** system_dirids ;
 TYPE_1__* user_dirids ;

const WCHAR *DIRID_get_string( int dirid )
{
    int i;

    if (dirid == DIRID_ABSOLUTE || dirid == DIRID_ABSOLUTE_16BIT) dirid = DIRID_NULL;

    if (dirid >= DIRID_USER)
    {
        for (i = 0; i < nb_user_dirids; i++)
            if (user_dirids[i].id == dirid) return user_dirids[i].str;
        WARN("user id %d not found\n", dirid );
        return ((void*)0);
    }
    else if (dirid >= MIN_CSIDL_DIRID)
    {
        if (dirid > MAX_CSIDL_DIRID) return get_unknown_dirid();
        dirid -= MIN_CSIDL_DIRID;
        if (!csidl_dirids[dirid]) csidl_dirids[dirid] = get_csidl_dir( dirid );
        return csidl_dirids[dirid];
    }
    else
    {
        if (dirid > MAX_SYSTEM_DIRID) return get_unknown_dirid();
        if (!system_dirids[dirid]) system_dirids[dirid] = create_system_dirid( dirid );
        return system_dirids[dirid];
    }
}
