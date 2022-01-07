
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CRYPT_ACTIVATE_ALLOW_DISCARDS ;
 int CRYPT_ACTIVATE_READONLY ;
 int CRYPT_ACTIVATE_SAME_CPU_CRYPT ;
 int CRYPT_ACTIVATE_SUBMIT_FROM_CRYPT_CPUS ;
 scalar_t__ arg_discards ;
 scalar_t__ arg_readonly ;
 scalar_t__ arg_same_cpu_crypt ;
 scalar_t__ arg_submit_from_crypt_cpus ;

__attribute__((used)) static uint32_t determine_flags(void) {
        uint32_t flags = 0;

        if (arg_readonly)
                flags |= CRYPT_ACTIVATE_READONLY;

        if (arg_discards)
                flags |= CRYPT_ACTIVATE_ALLOW_DISCARDS;

        if (arg_same_cpu_crypt)
                flags |= CRYPT_ACTIVATE_SAME_CPU_CRYPT;

        if (arg_submit_from_crypt_cpus)
                flags |= CRYPT_ACTIVATE_SUBMIT_FROM_CRYPT_CPUS;

        return flags;
}
