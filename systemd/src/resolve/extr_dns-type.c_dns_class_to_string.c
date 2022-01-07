
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;





const char *dns_class_to_string(uint16_t class) {

        switch (class) {

        case 128:
                return "IN";

        case 129:
                return "ANY";
        }

        return ((void*)0);
}
