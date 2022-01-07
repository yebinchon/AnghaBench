
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int packed; int cmd_len; int coord_len; } ;
typedef TYPE_1__ fz_path ;
struct TYPE_5__ {int coord_len; int cmd_len; } ;
typedef TYPE_2__ fz_packed_path ;





 int assert (int ) ;

int fz_packed_path_size(const fz_path *path)
{
 switch (path->packed)
 {
 case 128:
  if (path->cmd_len > 255 || path->coord_len > 255)
   return sizeof(fz_path);
  return sizeof(fz_packed_path) + sizeof(float) * path->coord_len + sizeof(uint8_t) * path->cmd_len;
 case 129:
  return sizeof(fz_path);
 case 130:
 {
  fz_packed_path *pack = (fz_packed_path *)path;
  return sizeof(fz_packed_path) + sizeof(float) * pack->coord_len + sizeof(uint8_t) * pack->cmd_len;
 }
 default:
  assert("This never happens" == ((void*)0));
  return 0;
 }
}
