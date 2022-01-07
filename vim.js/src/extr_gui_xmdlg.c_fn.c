
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; char** names; } ;
typedef TYPE_1__ SharedFontSelData ;


 int abort () ;

__attribute__((used)) static char *
fn(SharedFontSelData *data, int i)
{

    if (data->num < 0)
 abort();
    if (i >= data->num)
 i = data->num - 1;
    if (i < 0)
 i = 0;

    return data->names[i];
}
