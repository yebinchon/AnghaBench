
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_3__ {size_t* script_actions_count; int *** script_actions; } ;
typedef TYPE_1__ MSIPACKAGE ;


 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_SUCCESS ;
 int FIXME (char*,size_t) ;
 size_t SCRIPT_MAX ;
 int TRACE (char*,int ,size_t) ;
 int debugstr_w (int const*) ;
 int ** msi_alloc (int) ;
 int ** msi_realloc (int **,int) ;
 int * strdupW (int const*) ;

UINT msi_schedule_action( MSIPACKAGE *package, UINT script, const WCHAR *action )
{
    UINT count;
    WCHAR **newbuf = ((void*)0);

    if (script >= SCRIPT_MAX)
    {
        FIXME("Unknown script requested %u\n", script);
        return ERROR_FUNCTION_FAILED;
    }
    TRACE("Scheduling action %s in script %u\n", debugstr_w(action), script);

    count = package->script_actions_count[script];
    package->script_actions_count[script]++;
    if (count != 0) newbuf = msi_realloc( package->script_actions[script],
                                          package->script_actions_count[script] * sizeof(WCHAR *) );
    else newbuf = msi_alloc( sizeof(WCHAR *) );

    newbuf[count] = strdupW( action );
    package->script_actions[script] = newbuf;
    return ERROR_SUCCESS;
}
