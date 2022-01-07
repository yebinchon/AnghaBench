
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int arc_buf_contents_t ;




 int ARC_FLAG_BUFC_METADATA ;
 int panic (char*) ;

__attribute__((used)) static uint32_t
arc_bufc_to_flags(arc_buf_contents_t type)
{
 switch (type) {
 case 129:

  return (0);
 case 128:
  return (ARC_FLAG_BUFC_METADATA);
 default:
  break;
 }
 panic("undefined ARC buffer type!");
 return ((uint32_t)-1);
}
