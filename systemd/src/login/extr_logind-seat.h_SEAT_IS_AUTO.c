
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int streq_ptr (char const*,char*) ;

__attribute__((used)) static inline bool SEAT_IS_AUTO(const char *name) {
        return streq_ptr(name, "auto");
}
