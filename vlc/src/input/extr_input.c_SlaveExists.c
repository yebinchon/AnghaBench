
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_uri; } ;
typedef TYPE_1__ input_item_slave_t ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static bool SlaveExists( input_item_slave_t **pp_slaves, int i_slaves,
                         const char *psz_uri)
{
    for( int i = 0; i < i_slaves; i++ )
    {
        if( pp_slaves[i] != ((void*)0)
         && !strcmp( pp_slaves[i]->psz_uri, psz_uri ) )
            return 1;
    }
    return 0;
}
