
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_value_t ;
typedef int vlc_object_t ;
typedef int filter_t ;


 int var_Set (int *,char const*,int ) ;

__attribute__((used)) static int TriggerFilterCallback(vlc_object_t *p_this, char const *psz_var,
                                 vlc_value_t oldval, vlc_value_t newval,
                                 void *p_data)
{
    (void) p_this; (void) oldval;
    var_Set((filter_t *)p_data, psz_var, newval);
    return 0;
}
