
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;
typedef int filter_t ;


 scalar_t__ snprintf (char*,int,char*,float) ;
 int var_SetString (int ,char*,char*) ;
 int vlc_object_instance (int *) ;

__attribute__((used)) static void SendValues(filter_t *p_filter, float *value, int nbChannels)
{
    char msg[256];
    size_t len = 0;

    for (int i = 0; i < nbChannels; i++) {
        if (len >= sizeof (msg))
            break;
        len += snprintf(msg + len, sizeof (msg) - len, "%f:", value[i]);
    }


    var_SetString(vlc_object_instance(p_filter), "audiobargraph_v-i_values",
                  msg);
}
