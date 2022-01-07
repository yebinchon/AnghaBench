
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udev_parse_config_full (int *,int *,int *,int *) ;

__attribute__((used)) static inline int udev_parse_config(void) {
        return udev_parse_config_full(((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
