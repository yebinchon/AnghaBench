
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GError ;


 int seaf ;
 int seafile_session_config_set_int (int ,char const*,int) ;

int
seafile_set_config_int (const char *key, int value, GError **error)
{
    return seafile_session_config_set_int(seaf, key, value);
}
