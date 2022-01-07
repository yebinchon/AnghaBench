
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* values; } ;
typedef TYPE_3__ sqliterk_values ;
struct TYPE_8__ {TYPE_1__* binary; } ;
struct TYPE_10__ {int type; TYPE_2__ any; } ;
typedef TYPE_4__ sqliterk_value ;
struct TYPE_7__ {void* b; } ;


 int sqliterkValuesGetCount (TYPE_3__*) ;


const void *sqliterkValuesGetBinary(sqliterk_values *values, int index)
{
    void *out = ((void*)0);
    if (values && index < sqliterkValuesGetCount(values)) {
        sqliterk_value *value = &values->values[index];
        switch (value->type) {
            case 128:
                out = value->any.binary->b;
                break;
            default:
                break;
        }
    }
    return out;
}
