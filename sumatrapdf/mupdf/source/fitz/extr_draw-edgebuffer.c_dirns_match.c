
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIRN_UNSET ;

__attribute__((used)) static inline int dirns_match(int d0, int d1)
{
 return d0 == d1 || d0 == DIRN_UNSET || d1 == DIRN_UNSET;
}
