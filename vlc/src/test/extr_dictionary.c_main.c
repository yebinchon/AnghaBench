
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dictionary_t ;
typedef int our_keys ;


 int assert (int) ;
 int free (char**) ;
 int test_dictionary_validity (int *,char const**,int const) ;
 char** vlc_dictionary_all_keys (int *) ;
 int vlc_dictionary_clear (int *,int *,int *) ;
 int vlc_dictionary_has_key (int *,char const*) ;
 int vlc_dictionary_init (int *,int ) ;
 int vlc_dictionary_insert (int *,char const*,void*) ;
 int vlc_dictionary_is_empty (int *) ;
 scalar_t__ vlc_dictionary_keys_count (int *) ;
 int vlc_dictionary_remove_value_for_key (int *,char const*,int *,int *) ;

int main (void)
{
    static const char * our_keys[] = {
        "Hello", "Hella", "flowmeter", "Frostnipped", "frostnipped", "remiform", "quadrifoliolate", "singularity", "unafflicted"
    };
    const int size = sizeof(our_keys)/sizeof(our_keys[0]);
    char ** keys;
    intptr_t i = 0;

    vlc_dictionary_t dict;
    vlc_dictionary_init( &dict, 0 );

    assert( vlc_dictionary_keys_count( &dict ) == 0 );
    assert( vlc_dictionary_is_empty( &dict ) );

    keys = vlc_dictionary_all_keys( &dict );
    assert( keys && !keys[0] );
    free(keys);



    for( i = 0; i < size; i++ )
    {
        vlc_dictionary_insert( &dict, our_keys[i], (void *)i );
        assert( vlc_dictionary_has_key(&dict, our_keys[i]) );
        for( int j = i + 1; j < size; j++ )
            assert( !vlc_dictionary_has_key(&dict, our_keys[j]) );
    }

    assert( !vlc_dictionary_is_empty( &dict ) );
    test_dictionary_validity( &dict, our_keys, size );

    vlc_dictionary_remove_value_for_key( &dict, our_keys[size-1], ((void*)0), ((void*)0) );

    test_dictionary_validity( &dict, our_keys, size-1 );

    vlc_dictionary_clear( &dict, ((void*)0), ((void*)0) );

    assert( vlc_dictionary_keys_count( &dict ) == 0 );
    assert( vlc_dictionary_is_empty( &dict ) );
    return 0;
}
