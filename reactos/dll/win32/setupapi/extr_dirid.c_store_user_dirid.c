
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_dirid {int id; int * str; } ;
typedef int WCHAR ;
typedef int HINF ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 struct user_dirid* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 struct user_dirid* HeapReAlloc (int ,int ,struct user_dirid*,int) ;
 int TRACE (char*,int,int ) ;
 int TRUE ;
 int alloc_user_dirids ;
 int debugstr_w (int *) ;
 int max (int,int) ;
 int nb_user_dirids ;
 struct user_dirid* user_dirids ;

__attribute__((used)) static BOOL store_user_dirid( HINF hinf, int id, WCHAR *str )
{
    int i;

    for (i = 0; i < nb_user_dirids; i++) if (user_dirids[i].id == id) break;

    if (i < nb_user_dirids) HeapFree( GetProcessHeap(), 0, user_dirids[i].str );
    else
    {
        if (nb_user_dirids >= alloc_user_dirids)
        {
            int new_size = max( 32, alloc_user_dirids * 2 );

     struct user_dirid *new;

     if (user_dirids)
                new = HeapReAlloc( GetProcessHeap(), 0, user_dirids,
                                                  new_size * sizeof(*new) );
     else
                new = HeapAlloc( GetProcessHeap(), 0,
                                                  new_size * sizeof(*new) );

            if (!new) return FALSE;
            user_dirids = new;
            alloc_user_dirids = new_size;
        }
        nb_user_dirids++;
    }
    user_dirids[i].id = id;
    user_dirids[i].str = str;
    TRACE("id %d -> %s\n", id, debugstr_w(str) );
    return TRUE;
}
