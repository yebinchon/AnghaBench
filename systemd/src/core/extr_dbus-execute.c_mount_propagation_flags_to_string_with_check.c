
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_SET (unsigned long,int ,int ,int ,int ) ;
 int MS_PRIVATE ;
 int MS_SHARED ;
 int MS_SLAVE ;
 char const* mount_propagation_flags_to_string (unsigned long) ;

__attribute__((used)) static const char* mount_propagation_flags_to_string_with_check(unsigned long n) {
        if (!IN_SET(n, 0, MS_SHARED, MS_PRIVATE, MS_SLAVE))
                return ((void*)0);

        return mount_propagation_flags_to_string(n);
}
