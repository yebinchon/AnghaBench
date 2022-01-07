
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CheckedCommand (int *,int *,char*,int) ;
 int printf (char*) ;

void DeleteImage( FILE *p_cmd, FILE *p_res, int i_overlay ) {
    printf( "Removing image..." );
    CheckedCommand( p_cmd, p_res, "DeleteImage %d\n", i_overlay );
    printf( " done\n" );
}
