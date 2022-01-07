
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_epg_t ;


 int EPG_ADD (int *,int,int,char*) ;
 int assert (int *) ;
 int assert_current (int *,char*) ;
 int assert_events (int *,char*,int) ;
 int print_order (int *) ;
 int printf (char*,int ) ;
 int test_init () ;
 int vlc_epg_Delete (int *) ;
 int * vlc_epg_New (int ,int ) ;
 int vlc_epg_SetCurrent (int *,int) ;

int main( void )
{
    test_init();

    int i=1;


    printf("--test %d\n", i++);
    vlc_epg_t *p_epg = vlc_epg_New( 0, 0 );
    assert(p_epg);
    EPG_ADD( p_epg, 42, 20, "A" );
    EPG_ADD( p_epg, 62, 20, "B" );
    EPG_ADD( p_epg, 82, 20, "C" );
    EPG_ADD( p_epg, 102, 20, "D" );
    print_order( p_epg );
    assert_events( p_epg, "ABCD", 4 );
    assert_current( p_epg, ((void*)0) );

    vlc_epg_SetCurrent( p_epg, 82 );
    assert_current( p_epg, "C" );

    vlc_epg_Delete( p_epg );



    printf("--test %d\n", i++);
    p_epg = vlc_epg_New( 0, 0 );
    assert(p_epg);
    EPG_ADD( p_epg, 82, 20, "C" );
    EPG_ADD( p_epg, 62, 20, "B" );
    EPG_ADD( p_epg, 102, 20, "D" );
    EPG_ADD( p_epg, 42, 20, "A" );
    print_order( p_epg );
    assert_events( p_epg, "ABCD", 4 );
    vlc_epg_Delete( p_epg );


    printf("--test %d\n", i++);
    p_epg = vlc_epg_New( 0, 0 );
    assert(p_epg);
    EPG_ADD( p_epg, 142, 20, "F" );
    EPG_ADD( p_epg, 122, 20, "E" );
    EPG_ADD( p_epg, 102, 20, "D" );
    EPG_ADD( p_epg, 82, 20, "C" );
    EPG_ADD( p_epg, 42, 20, "A" );
    EPG_ADD( p_epg, 62, 20, "B" );
    print_order( p_epg );
    assert_events( p_epg, "ABCDEF", 6 );
    vlc_epg_Delete( p_epg );


    printf("--test %d\n", i++);
    p_epg = vlc_epg_New( 0, 0 );
    assert(p_epg);
    EPG_ADD( p_epg, 62, 20, "E" );
    EPG_ADD( p_epg, 62, 20, "F" );
    EPG_ADD( p_epg, 42, 20, "A" );
    vlc_epg_SetCurrent( p_epg, 62 );
    EPG_ADD( p_epg, 82, 20, "C" );
    EPG_ADD( p_epg, 62, 20, "B" );
    EPG_ADD( p_epg, 102, 20, "D" );
    print_order( p_epg );
    assert_events( p_epg, "ABCD", 4 );
    assert_current( p_epg, "B" );
    vlc_epg_Delete( p_epg );

    return 0;
}
