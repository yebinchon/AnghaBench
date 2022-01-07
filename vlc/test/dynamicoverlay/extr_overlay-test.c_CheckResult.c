
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ IsFailure (char*) ;
 int exit (int) ;
 int fscanf (int *,char*,char**) ;
 int printf (char*) ;

void CheckResult( FILE *p_res ) {
    char psz_resp[9];

    fscanf( p_res, "%8s", &psz_resp );
    if( IsFailure( psz_resp ) ) {
        printf( " failed\n" );
        exit( -1 );
    }
}
