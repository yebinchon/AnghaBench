
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_4__ {int * ntom_val; } ;
typedef TYPE_1__ mpg123_handle ;


 int ntom_val (TYPE_1__*,int ) ;

void ntom_set_ntom(mpg123_handle *fr, off_t num)
{
 fr->ntom_val[1] = fr->ntom_val[0] = ntom_val(fr, num);
}
