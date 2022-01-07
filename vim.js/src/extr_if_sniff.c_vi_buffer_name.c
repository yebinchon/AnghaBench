
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ b_sfname; } ;


 TYPE_1__* curbuf ;

__attribute__((used)) static char *
vi_buffer_name()
{
    return (char *)curbuf->b_sfname;
}
