
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int libvlc_int_t ;
struct TYPE_2__ {int b_bool; } ;


 int RAND_MAX ;
 unsigned int VAR_COUNT ;
 int VLC_VAR_BOOL ;
 int assert (int) ;
 int * psz_var_name ;
 int rand () ;
 int var_Create (int *,int ,int ) ;
 int var_Destroy (int *,int ) ;
 scalar_t__ var_GetBool (int *,int ) ;
 int var_SetBool (int *,int ,int) ;
 int var_ToggleBool (int *,int ) ;
 TYPE_1__* var_value ;

__attribute__((used)) static void test_booleans( libvlc_int_t *p_libvlc )
{
    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Create( p_libvlc, psz_var_name[i], VLC_VAR_BOOL );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        var_value[i].b_bool = (rand() > RAND_MAX/2);
        var_SetBool( p_libvlc, psz_var_name[i], var_value[i].b_bool );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        assert( var_GetBool( p_libvlc, psz_var_name[i] ) == var_value[i].b_bool );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_ToggleBool( p_libvlc, psz_var_name[i] );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        assert( var_GetBool( p_libvlc, psz_var_name[i] ) != var_value[i].b_bool );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Destroy( p_libvlc, psz_var_name[i] );
}
