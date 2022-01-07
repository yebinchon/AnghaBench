
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ELEMENTSOF (int ) ;
 int capability_names ;

int capability_list_length(void) {
        return (int) ELEMENTSOF(capability_names);
}
