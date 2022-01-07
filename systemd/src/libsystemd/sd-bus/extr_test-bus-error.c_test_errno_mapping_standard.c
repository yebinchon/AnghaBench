
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int EUCLEAN ;
 int assert_se (int) ;
 int sd_bus_error_set (int *,char*,int *) ;

__attribute__((used)) static void test_errno_mapping_standard(void) {
        assert_se(sd_bus_error_set(((void*)0), "System.Error.EUCLEAN", ((void*)0)) == -EUCLEAN);
        assert_se(sd_bus_error_set(((void*)0), "System.Error.EBUSY", ((void*)0)) == -EBUSY);
        assert_se(sd_bus_error_set(((void*)0), "System.Error.EINVAL", ((void*)0)) == -EINVAL);
        assert_se(sd_bus_error_set(((void*)0), "System.Error.WHATSIT", ((void*)0)) == -EIO);
}
