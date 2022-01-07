
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int east_asian_width; } ;


 TYPE_1__* get_ucd_record (int ) ;

int ucdn_get_east_asian_width(uint32_t code)
{
 return get_ucd_record(code)->east_asian_width;
}
