
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unit_name_to_instance (char const*,int *) ;

__attribute__((used)) static inline int unit_name_classify(const char *n) {
        return unit_name_to_instance(n, ((void*)0));
}
