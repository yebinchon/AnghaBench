
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ sqliterk_values ;



int sqliterkValuesGetCount(sqliterk_values *values)
{
    if (!values) {
        return 0;
    }
    return values->count;
}
