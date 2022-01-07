
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;


 TYPE_1__ cd ;
 int write_byte (int ) ;

__attribute__((used)) static void fill_sector(void)
{
    while (cd.offset != 0)
        write_byte(0);
}
