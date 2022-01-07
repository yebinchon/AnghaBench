
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* FALLBACK_HOSTNAME ;
 scalar_t__ is_localhost (char const*) ;

__attribute__((used)) static const char *fallback_hostname(void) {




        if (is_localhost(FALLBACK_HOSTNAME))
                return "linux";

        return FALLBACK_HOSTNAME;
}
