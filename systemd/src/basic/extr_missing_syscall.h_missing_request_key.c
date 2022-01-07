
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_serial_t ;


 int ENOSYS ;
 int __NR_request_key ;
 int errno ;
 int syscall (int ,char const*,char const*,char const*,int) ;

__attribute__((used)) static inline key_serial_t missing_request_key(const char *type, const char *description, const char * callout_info, key_serial_t destringid) {



        errno = ENOSYS;
        return -1;



}
