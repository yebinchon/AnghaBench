
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int libvlc_int_t ;
struct TYPE_2__ {scalar_t__ f_float; } ;


 unsigned int VAR_COUNT ;
 int VLC_VAR_FLOAT ;
 int assert (int) ;
 int * psz_var_name ;
 scalar_t__ rand () ;
 int var_Create (int *,int ,int ) ;
 int var_Destroy (int *,int ) ;
 scalar_t__ var_GetFloat (int *,int ) ;
 int var_SetFloat (int *,int ,scalar_t__) ;
 TYPE_1__* var_value ;

__attribute__((used)) static void test_floats( libvlc_int_t *p_libvlc )
{
    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Create( p_libvlc, psz_var_name[i], VLC_VAR_FLOAT );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        var_value[i].f_float = rand();
        var_SetFloat( p_libvlc, psz_var_name[i], var_value[i].f_float );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        assert( var_GetFloat( p_libvlc, psz_var_name[i] ) == var_value[i].f_float );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Destroy( p_libvlc, psz_var_name[i] );
}
