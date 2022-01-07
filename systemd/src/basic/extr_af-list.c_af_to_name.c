
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ELEMENTSOF (char const**) ;
 char const** af_names ;

const char *af_to_name(int id) {

        if (id <= 0)
                return ((void*)0);

        if ((size_t) id >= ELEMENTSOF(af_names))
                return ((void*)0);

        return af_names[id];
}
