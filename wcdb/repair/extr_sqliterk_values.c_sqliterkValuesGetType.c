
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* values; } ;
typedef TYPE_2__ sqliterk_values ;
typedef int sqliterk_value_type ;
struct TYPE_5__ {int type; } ;


 int sqliterkValuesGetCount (TYPE_2__*) ;
 int sqliterk_value_type_null ;

sqliterk_value_type sqliterkValuesGetType(sqliterk_values *values, int index)
{
    if (values && index < sqliterkValuesGetCount(values)) {
        return values->values[index].type;
    }
    return sqliterk_value_type_null;
}
