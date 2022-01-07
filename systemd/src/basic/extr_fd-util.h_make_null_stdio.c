
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rearrange_stdio (int,int,int) ;

__attribute__((used)) static inline int make_null_stdio(void) {
        return rearrange_stdio(-1, -1, -1);
}
