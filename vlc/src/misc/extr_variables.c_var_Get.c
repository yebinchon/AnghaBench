
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_value_t ;
typedef int vlc_object_t ;


 int var_GetChecked (int *,char const*,int ,int *) ;

int (var_Get)(vlc_object_t *p_this, const char *psz_name, vlc_value_t *p_val)
{
    return var_GetChecked( p_this, psz_name, 0, p_val );
}
