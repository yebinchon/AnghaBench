
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ELEMENTSOF (char const**) ;
 char const** capability_names ;

const char *capability_to_name(int id) {

        if (id < 0)
                return ((void*)0);

        if ((size_t) id >= ELEMENTSOF(capability_names))
                return ((void*)0);

        return capability_names[id];
}
