
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* psz_help; } ;
typedef TYPE_1__ module_t ;



const char *module_get_help( const module_t *m )
{
    return m->psz_help;
}
