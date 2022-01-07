
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sy; int id; } ;
typedef int SYMBOL ;


 int NUMKEYS ;
 int SUNDEFINED ;
 TYPE_1__* TabKeys ;
 int cmsstrcasecmp (char const*,int ) ;

__attribute__((used)) static
SYMBOL BinSrchKey(const char *id)
{
    int l = 1;
    int r = NUMKEYS;
    int x, res;

    while (r >= l)
    {
        x = (l+r)/2;
        res = cmsstrcasecmp(id, TabKeys[x-1].id);
        if (res == 0) return TabKeys[x-1].sy;
        if (res < 0) r = x - 1;
        else l = x + 1;
    }

    return SUNDEFINED;
}
