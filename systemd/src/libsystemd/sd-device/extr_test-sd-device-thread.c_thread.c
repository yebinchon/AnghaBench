
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int assert_se (int) ;
 int * sd_device_unref (int *) ;

__attribute__((used)) static void* thread(void *p) {
        sd_device **d = p;

        assert_se(!(*d = sd_device_unref(*d)));

        return ((void*)0);
}
