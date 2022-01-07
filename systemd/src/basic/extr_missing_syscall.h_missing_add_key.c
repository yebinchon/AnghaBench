
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_serial_t ;


 int ENOSYS ;
 int __NR_add_key ;
 int errno ;
 int syscall (int ,char const*,char const*,void const*,size_t,int) ;

__attribute__((used)) static inline key_serial_t missing_add_key(const char *type, const char *description, const void *payload, size_t plen, key_serial_t ringid) {



        errno = ENOSYS;
        return -1;



}
