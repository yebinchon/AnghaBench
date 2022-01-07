
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* typelib_segdir; int * typelib_segment_data; } ;
typedef TYPE_2__ msft_typelib_t ;
struct TYPE_4__ {int length; } ;


 int put_data (int ,int ) ;

__attribute__((used)) static void ctl2_write_segment(msft_typelib_t *typelib, int segment)
{
    put_data(typelib->typelib_segment_data[segment], typelib->typelib_segdir[segment].length);
}
