
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTYPE_HARBOR ;
 int PTYPE_SYSTEM ;

__attribute__((used)) static inline int
invalid_type(int type) {
 return type != PTYPE_SYSTEM && type != PTYPE_HARBOR;
}
