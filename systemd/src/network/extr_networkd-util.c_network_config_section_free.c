
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NetworkConfigSection ;


 int free (int *) ;

void network_config_section_free(NetworkConfigSection *cs) {
        free(cs);
}
