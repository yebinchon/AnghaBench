
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_3__ {size_t unique_actions_count; int ** unique_actions; } ;
typedef TYPE_1__ MSIPACKAGE ;


 size_t ERROR_SUCCESS ;
 int TRACE (char*,int ) ;
 int debugstr_w (int const*) ;
 int ** msi_alloc (int) ;
 int ** msi_realloc (int **,int) ;
 int * strdupW (int const*) ;

UINT msi_register_unique_action( MSIPACKAGE *package, const WCHAR *action )
{
    UINT count;
    WCHAR **newbuf = ((void*)0);

    TRACE("Registering %s as unique action\n", debugstr_w(action));

    count = package->unique_actions_count;
    package->unique_actions_count++;
    if (count != 0) newbuf = msi_realloc( package->unique_actions,
                                          package->unique_actions_count * sizeof(WCHAR *) );
    else newbuf = msi_alloc( sizeof(WCHAR *) );

    newbuf[count] = strdupW( action );
    package->unique_actions = newbuf;
    return ERROR_SUCCESS;
}
