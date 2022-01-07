
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CheckResult (int *) ;
 int EndAtomic (int *,int *) ;
 int M_PI ;
 int SetAlpha (int *,int *,int,int) ;
 int SetPosition (int *,int *,int,int,int) ;
 int SetVisibility (int *,int *,int,int) ;
 int StartAtomic (int *,int *) ;
 int abs (int) ;
 double cos (float) ;
 int printf (char*) ;
 double sin (float) ;
 int sleep (int) ;
 int usleep (int) ;

void BasicTest( FILE *p_cmd, FILE *p_res, int i_overlay ) {
    printf( "Activating overlay..." );
    SetVisibility( p_cmd, p_res, i_overlay, 1 );
    printf( " done\n" );

    printf( "Sweeping alpha..." );
    for( int i_alpha = 0xFF; i_alpha >= -0xFF ; i_alpha -= 8 ) {
        SetAlpha( p_cmd, p_res, i_overlay, abs( i_alpha ) );
        usleep( 20000 );
    }
    SetAlpha( p_cmd, p_res, i_overlay, 255 );
    printf( " done\n" );

    printf( "Circle motion..." );
    for( float f_theta = 0; f_theta <= 2 * M_PI ; f_theta += M_PI / 64.0 ) {
        SetPosition( p_cmd, p_res, i_overlay,
                     (int)( - cos( f_theta ) * 100.0 + 100.0 ),
                     (int)( - sin( f_theta ) * 100.0 + 100.0 ) );
        usleep( 20000 );
    }
    SetPosition( p_cmd, p_res, i_overlay, 0, 100 );
    printf( " done\n" );

    printf( "Atomic motion..." );
    StartAtomic( p_cmd, p_res );
    SetPosition( p_cmd, ((void*)0), i_overlay, 200, 50 );
    sleep( 1 );
    SetPosition( p_cmd, ((void*)0), i_overlay, 0, 0 );
    EndAtomic( p_cmd, p_res );
    CheckResult( p_res );
    CheckResult( p_res );
    printf( " done\n" );

    sleep( 5 );
}
