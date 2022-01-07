
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gboolean ;
typedef int Seafile ;


 int * seafile_from_json (char const*,void*,int) ;
 int * seafile_from_v0_data (char const*,void*,int) ;

__attribute__((used)) static Seafile *
seafile_from_data (const char *id, void *data, int len, gboolean is_json)
{
    if (is_json)
        return seafile_from_json (id, data, len);
    else
        return seafile_from_v0_data (id, data, len);
}
