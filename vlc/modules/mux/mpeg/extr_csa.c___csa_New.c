
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csa_t ;


 int * calloc (int,int) ;

csa_t *csa_New( void )
{
    return calloc( 1, sizeof( csa_t ) );
}
