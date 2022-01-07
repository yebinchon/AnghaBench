
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
const char* seccomp_arch_to_string(uint32_t c) {





        switch(c) {
        case 136:
                return "native";
        case 129:
                return "x86";
        case 128:
                return "x86-64";
        case 130:
                return "x32";
        case 143:
                return "arm";
        case 144:
                return "arm64";
        case 142:
                return "mips";
        case 141:
                return "mips64";
        case 140:
                return "mips64-n32";
        case 139:
                return "mips-le";
        case 138:
                return "mips64-le";
        case 137:
                return "mips64-le-n32";
        case 135:
                return "ppc";
        case 134:
                return "ppc64";
        case 133:
                return "ppc64-le";
        case 132:
                return "s390";
        case 131:
                return "s390x";
        default:
                return ((void*)0);
        }
}
