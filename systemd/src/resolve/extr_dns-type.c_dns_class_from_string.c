
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS_CLASS_ANY ;
 int DNS_CLASS_IN ;
 int _DNS_CLASS_INVALID ;
 scalar_t__ strcaseeq (char const*,char*) ;

int dns_class_from_string(const char *s) {

        if (!s)
                return _DNS_CLASS_INVALID;

        if (strcaseeq(s, "IN"))
                return DNS_CLASS_IN;
        else if (strcaseeq(s, "ANY"))
                return DNS_CLASS_ANY;

        return _DNS_CLASS_INVALID;
}
