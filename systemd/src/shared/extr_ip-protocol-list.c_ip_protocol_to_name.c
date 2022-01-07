
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ELEMENTSOF (char const**) ;
 char const** ip_protocol_names ;

const char *ip_protocol_to_name(int id) {

        if (id < 0)
                return ((void*)0);

        if ((size_t) id >= ELEMENTSOF(ip_protocol_names))
                return ((void*)0);

        return ip_protocol_names[id];
}
