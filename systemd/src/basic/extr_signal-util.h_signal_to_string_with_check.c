
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGNAL_VALID (int) ;
 char const* signal_to_string (int) ;

__attribute__((used)) static inline const char* signal_to_string_with_check(int n) {
        if (!SIGNAL_VALID(n))
                return ((void*)0);

        return signal_to_string(n);
}
