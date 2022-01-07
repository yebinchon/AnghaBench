
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CheckedCommand (int *,int *,char*) ;
 int fscanf (int *,char*,int*) ;
 int printf (char*,...) ;

int GenImage( FILE *p_cmd, FILE *p_res ) {
    int i_overlay;

    printf( "Getting an overlay..." );
    CheckedCommand( p_cmd, p_res, "GenImage\n" );
    fscanf( p_res, "%d", &i_overlay );
    printf( " done. Overlay is %d\n", i_overlay );

    return i_overlay;
}
