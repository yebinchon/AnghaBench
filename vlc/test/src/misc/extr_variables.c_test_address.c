
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ p_address; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int libvlc_int_t ;
struct TYPE_5__ {char* p_address; } ;


 int VAR_COUNT ;
 int VLC_VAR_ADDRESS ;
 int assert (int) ;
 int * psz_var_name ;
 int var_Create (int *,int ,int ) ;
 int var_Destroy (int *,int ) ;
 int var_Get (int *,int ,TYPE_1__*) ;
 int var_SetAddress (int *,int ,char*) ;
 TYPE_2__* var_value ;

__attribute__((used)) static void test_address( libvlc_int_t *p_libvlc )
{
    char dummy[VAR_COUNT];

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Create( p_libvlc, psz_var_name[i], VLC_VAR_ADDRESS );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        var_value[i].p_address = &dummy[i];
        var_SetAddress( p_libvlc, psz_var_name[i], var_value[i].p_address );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        vlc_value_t val;
        var_Get( p_libvlc, psz_var_name[i], &val );
        assert( val.p_address == var_value[i].p_address );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Destroy( p_libvlc, psz_var_name[i] );
}
