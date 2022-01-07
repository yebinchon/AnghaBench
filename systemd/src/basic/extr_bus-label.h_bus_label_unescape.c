
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bus_label_unescape_n (char const*,int ) ;
 int strlen_ptr (char const*) ;

__attribute__((used)) static inline char *bus_label_unescape(const char *f) {
        return bus_label_unescape_n(f, strlen_ptr(f));
}
