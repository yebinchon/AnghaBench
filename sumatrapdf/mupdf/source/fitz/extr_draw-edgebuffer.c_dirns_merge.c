
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIRN_UNSET ;
 int assert (int ) ;
 int dirns_match (int,int) ;

__attribute__((used)) static inline int dirns_merge(int d0, int d1)
{
 if (d0 == DIRN_UNSET)
  return d1;
 assert(dirns_match(d0, d1));
 return d0;
}
