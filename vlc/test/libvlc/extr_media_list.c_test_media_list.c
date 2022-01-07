
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_list_t ;
typedef int libvlc_instance_t ;


 int assert (int) ;
 int libvlc_media_list_add_media (int *,int *) ;
 int libvlc_media_list_count (int *) ;
 int libvlc_media_list_index_of_item (int *,int *) ;
 int libvlc_media_list_insert_media (int *,int *,int) ;
 int * libvlc_media_list_item_at_index (int *,int) ;
 int * libvlc_media_list_new (int *) ;
 int libvlc_media_list_release (int *) ;
 int libvlc_media_list_remove_index (int *,int) ;
 int * libvlc_media_new_path (int *,char*) ;
 int libvlc_media_release (int *) ;
 int * libvlc_new (int,char const**) ;
 int libvlc_release (int *) ;
 int test_log (char*) ;

__attribute__((used)) static void test_media_list (const char ** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md, *md1, *md2, *md3, *md4;
    libvlc_media_list_t *ml;
    int ret;

    test_log ("Testing media_list\n");

    vlc = libvlc_new (argc, argv);
    assert (vlc != ((void*)0));

    ml = libvlc_media_list_new (vlc);
    assert (ml != ((void*)0));

    md1 = libvlc_media_new_path (vlc, "/dev/null");
    assert (md1 != ((void*)0));
    md2 = libvlc_media_new_path (vlc, "/dev/null");
    assert (md2 != ((void*)0));
    md3 = libvlc_media_new_path (vlc, "/dev/null");
    assert (md3 != ((void*)0));

    ret = libvlc_media_list_add_media (ml, md1);
    assert (!ret);
    ret = libvlc_media_list_add_media (ml, md2);
    assert (!ret);

    assert( libvlc_media_list_count (ml) == 2 );
    assert( libvlc_media_list_index_of_item (ml, md1) == 0 );
    assert( libvlc_media_list_index_of_item (ml, md2) == 1 );

    ret = libvlc_media_list_remove_index (ml, 0);
    assert (!ret);


    assert( libvlc_media_list_index_of_item (ml, md2) == 0 );
    ret = libvlc_media_list_add_media (ml, md1);
    assert (!ret);
    ret = libvlc_media_list_add_media (ml, md1);
    assert (!ret);


    assert( libvlc_media_list_count (ml) == 3 );

    ret = libvlc_media_list_insert_media (ml, md3, 2);
    assert (!ret);


    assert( libvlc_media_list_count (ml) == 4 );


    assert( libvlc_media_list_index_of_item (ml, md3) == 2 );


    md = libvlc_media_list_item_at_index (ml, 0);
    assert(md == md2);
    libvlc_media_release(md);

    md = libvlc_media_list_item_at_index (ml, 2);
    assert(md == md3);
    libvlc_media_release(md);



    ret = libvlc_media_list_remove_index (ml, 4);
    assert (ret == -1);

    ret = libvlc_media_list_remove_index (ml, 100);
    assert (ret == -1);

    ret = libvlc_media_list_remove_index (ml, -1);
    assert (ret == -1);


    libvlc_media_t * p_non_exist =
        libvlc_media_list_item_at_index (ml, 4);
    assert (p_non_exist == ((void*)0));

    p_non_exist = libvlc_media_list_item_at_index (ml, 100);
    assert (p_non_exist == ((void*)0));

    p_non_exist = libvlc_media_list_item_at_index (ml, -1);
    assert (p_non_exist == ((void*)0));

    md4 = libvlc_media_new_path (vlc, "/dev/null");
    assert (md4 != ((void*)0));


    int i_non_exist = 0;
    i_non_exist = libvlc_media_list_index_of_item (ml, md4);
    assert ( i_non_exist == -1 );

    libvlc_media_release (md1);
    libvlc_media_release (md2);
    libvlc_media_release (md3);
    libvlc_media_release (md4);

    libvlc_media_list_release (ml);

    libvlc_release (vlc);
}
