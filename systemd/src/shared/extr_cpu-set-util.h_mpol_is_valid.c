
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPOL_DEFAULT ;
 int MPOL_LOCAL ;

__attribute__((used)) static inline bool mpol_is_valid(int t) {
        return t >= MPOL_DEFAULT && t <= MPOL_LOCAL;
}
