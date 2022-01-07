
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int libvlc_int_t ;
struct TYPE_2__ {scalar_t__ i_int; } ;


 unsigned int VAR_COUNT ;
 int VLC_VAR_INTEGER ;
 int assert (int) ;
 int * psz_var_name ;
 scalar_t__ rand () ;
 int var_Create (int *,int ,int ) ;
 int var_DecInteger (int *,int ) ;
 int var_Destroy (int *,int ) ;
 scalar_t__ var_GetInteger (int *,int ) ;
 int var_IncInteger (int *,int ) ;
 int var_SetInteger (int *,int ,scalar_t__) ;
 TYPE_1__* var_value ;

__attribute__((used)) static void test_integer( libvlc_int_t *p_libvlc )
{
    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Create( p_libvlc, psz_var_name[i], VLC_VAR_INTEGER );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        var_value[i].i_int = rand();
        var_SetInteger( p_libvlc, psz_var_name[i], var_value[i].i_int );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        assert( var_GetInteger( p_libvlc, psz_var_name[i] ) == var_value[i].i_int );
        var_IncInteger( p_libvlc, psz_var_name[i] );
        assert( var_GetInteger( p_libvlc, psz_var_name[i] ) == var_value[i].i_int + 1 );
        var_DecInteger( p_libvlc, psz_var_name[i] );
        assert( var_GetInteger( p_libvlc, psz_var_name[i] ) == var_value[i].i_int );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Destroy( p_libvlc, psz_var_name[i] );
}
