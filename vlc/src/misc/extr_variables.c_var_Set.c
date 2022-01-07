
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_value_t ;
typedef int vlc_object_t ;


 int var_SetChecked (int *,char const*,int ,int ) ;

int (var_Set)(vlc_object_t *p_this, const char *psz_name, vlc_value_t val)
{
    return var_SetChecked( p_this, psz_name, 0, val );
}
