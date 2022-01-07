
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int signature_element_length_internal (char const*,int,int ,int ,size_t*) ;

int signature_element_length(const char *s, size_t *l) {
        return signature_element_length_internal(s, 1, 0, 0, l);
}
