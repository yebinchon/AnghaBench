
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 scalar_t__ set_size (int const*) ;

__attribute__((used)) static inline bool set_isempty(const Set *s) {
        return set_size(s) == 0;
}
