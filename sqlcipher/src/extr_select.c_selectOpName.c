
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *selectOpName(int id){
  char *z;
  switch( id ){
    case 130: z = "UNION ALL"; break;
    case 128: z = "INTERSECT"; break;
    case 129: z = "EXCEPT"; break;
    default: z = "UNION"; break;
  }
  return z;
}
