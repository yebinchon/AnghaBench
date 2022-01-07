
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ELEMENTSOF (char const**) ;
 char const** errno_names ;

const char *errno_to_name(int id) {

        if (id < 0)
                id = -id;

        if ((size_t) id >= ELEMENTSOF(errno_names))
                return ((void*)0);

        return errno_names[id];
}
