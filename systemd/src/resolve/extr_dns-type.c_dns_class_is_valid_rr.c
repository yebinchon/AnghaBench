
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ DNS_CLASS_ANY ;

bool dns_class_is_valid_rr(uint16_t class) {
        return class != DNS_CLASS_ANY;
}
