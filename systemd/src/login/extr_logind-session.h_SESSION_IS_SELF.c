
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isempty (char const*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static inline bool SESSION_IS_SELF(const char *name) {
        return isempty(name) || streq(name, "self");
}
