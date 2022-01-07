
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* values; } ;
typedef TYPE_4__ sqliterk_values ;
struct TYPE_10__ {TYPE_2__* text; TYPE_1__* binary; } ;
struct TYPE_12__ {int type; TYPE_3__ any; } ;
typedef TYPE_5__ sqliterk_value ;
struct TYPE_9__ {int s; } ;
struct TYPE_8__ {int s; } ;


 int sqliterkValuesGetCount (TYPE_4__*) ;



int sqliterkValuesGetBytes(sqliterk_values *values, int index)
{
    int out = 0;
    if (values && index < sqliterkValuesGetCount(values)) {
        sqliterk_value *value = &values->values[index];
        switch (value->type) {
            case 129:
                out = value->any.binary->s;
                break;
            case 128:
                out = value->any.text->s;
                break;
            default:
                break;
        }
    }
    return out;
}
