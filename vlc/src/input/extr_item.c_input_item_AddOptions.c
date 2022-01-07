
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_item_t ;


 int VLC_SUCCESS ;
 int input_item_AddOption (int *,char const* const,unsigned int) ;

int input_item_AddOptions( input_item_t *p_item, int i_options,
                           const char *const *ppsz_options,
                           unsigned i_flags )
{
    int i_ret = VLC_SUCCESS;
    for( int i = 0; i < i_options && i_ret == VLC_SUCCESS; i++ )
        i_ret = input_item_AddOption( p_item, ppsz_options[i], i_flags );
    return i_ret;
}
