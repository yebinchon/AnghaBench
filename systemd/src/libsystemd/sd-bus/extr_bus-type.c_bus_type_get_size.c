
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
int bus_type_get_size(char c) {

        switch (c) {
        case 136:
                return 1;

        case 134:
        case 131:
                return 2;

        case 137:
        case 133:
        case 130:
        case 128:
                return 4;

        case 132:
        case 129:
        case 135:
                return 8;
        }

        return -EINVAL;
}
