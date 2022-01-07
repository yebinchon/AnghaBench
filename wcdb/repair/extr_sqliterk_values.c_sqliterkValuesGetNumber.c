
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* values; } ;
typedef TYPE_3__ sqliterk_values ;
struct TYPE_9__ {TYPE_1__* text; scalar_t__* number; scalar_t__* integer; } ;
struct TYPE_11__ {TYPE_2__ any; } ;
typedef TYPE_4__ sqliterk_value ;
struct TYPE_8__ {int t; } ;


 double atof (int ) ;
 int sqliterkValuesGetCount (TYPE_3__*) ;
 int sqliterkValuesGetType (TYPE_3__*,int) ;




double sqliterkValuesGetNumber(sqliterk_values *values, int index)
{
    double out = 0;
    if (values && index < sqliterkValuesGetCount(values)) {
        sqliterk_value *value = &values->values[index];
        switch (sqliterkValuesGetType(values, index)) {
            case 130:
                out = (double) (*value->any.integer);
                break;
            case 129:
                out = (double) (*value->any.number);
                break;
            case 128:
                out = atof(value->any.text->t);
                break;
            default:
                break;
        }
    }
    return out;
}
