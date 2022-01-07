
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
int bus_type_get_alignment(char c) {

        switch (c) {
        case 144:
        case 136:
        case 128:
                return 1;

        case 140:
        case 132:
                return 2;

        case 145:
        case 139:
        case 131:
        case 135:
        case 137:
        case 146:
        case 129:
                return 4;

        case 138:
        case 130:
        case 141:
        case 134:
        case 133:
        case 143:
        case 142:
                return 8;
        }

        return -EINVAL;
}
