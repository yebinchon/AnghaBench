
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scan_multiplex_t ;


 int free (int *) ;
 int scan_multiplex_Clean (int *) ;

__attribute__((used)) static void scan_multiplex_Delete( scan_multiplex_t *p_mplex )
{
    scan_multiplex_Clean( p_mplex );
    free( p_mplex );
}
