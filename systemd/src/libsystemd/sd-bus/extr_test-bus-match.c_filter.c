
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 size_t ELEMENTSOF (int*) ;
 size_t PTR_TO_UINT (void*) ;
 int assert_se (int) ;
 int log_info (char*,size_t) ;
 int* mask ;

__attribute__((used)) static int filter(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        log_info("Ran %u", PTR_TO_UINT(userdata));
        assert_se(PTR_TO_UINT(userdata) < ELEMENTSOF(mask));
        mask[PTR_TO_UINT(userdata)] = 1;
        return 0;
}
