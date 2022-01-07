
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int display; int name; } ;
typedef TYPE_1__ vdp_instance_t ;


 int XDefaultScreen (int ) ;
 int strnullcmp (char const*,int ) ;

__attribute__((used)) static int vicmp(const char *name, int num, const vdp_instance_t *vi)
{
    int val = strnullcmp(name, vi->name);
    if (val)
        return val;

    if (num < 0)
        num = XDefaultScreen(vi->display);
    return num - vi->num;
}
