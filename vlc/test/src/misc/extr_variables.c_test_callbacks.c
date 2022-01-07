
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int libvlc_int_t ;
struct TYPE_2__ {int i_int; } ;


 unsigned int VAR_COUNT ;
 int VLC_VAR_INTEGER ;
 int assert (int) ;
 int callback ;
 int * psz_var_name ;
 int rand () ;
 int var_AddCallback (int *,int ,int ,int *) ;
 int var_Create (int *,int ,int ) ;
 int var_Destroy (int *,int ) ;
 int var_SetInteger (int *,int ,int) ;
 int var_TriggerCallback (int *,int ) ;
 TYPE_1__* var_value ;

__attribute__((used)) static void test_callbacks( libvlc_int_t *p_libvlc )
{

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        var_Create( p_libvlc, psz_var_name[i], VLC_VAR_INTEGER );
        var_AddCallback( p_libvlc, psz_var_name[i], callback, psz_var_name );
    }


    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        int i_temp = rand();
        var_SetInteger( p_libvlc, psz_var_name[i], i_temp );
        assert( i_temp == var_value[i].i_int );
        var_SetInteger( p_libvlc, psz_var_name[i], 0 );
        assert( var_value[i].i_int == 0 );
        var_value[i].i_int = 1;
    }


    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        var_TriggerCallback( p_libvlc, psz_var_name[i] );
        assert( var_value[i].i_int == 0 );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Destroy( p_libvlc, psz_var_name[i] );
}
