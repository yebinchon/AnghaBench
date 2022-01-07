
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csa_t ;


 int free (int *) ;

void csa_Delete( csa_t *c )
{
    free( c );
}
