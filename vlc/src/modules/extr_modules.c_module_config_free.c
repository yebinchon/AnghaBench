
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_config_t ;


 int free (int *) ;

void module_config_free( module_config_t *config )
{
    free( config );
}
