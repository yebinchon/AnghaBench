
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * memory; TYPE_2__* binary; TYPE_1__* text; } ;
struct TYPE_9__ {int type; TYPE_3__ any; } ;
typedef TYPE_4__ sqliterk_value ;
struct TYPE_7__ {int * b; } ;
struct TYPE_6__ {int * t; } ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkOSFree (int *) ;

 int sqliterk_value_type_null ;


int sqliterkValueClear(sqliterk_value *value)
{
    if (!value) {
        return SQLITERK_MISUSE;
    }
    if (value->any.memory) {
        switch (value->type) {
            case 128:
                if (value->any.text->t) {
                    sqliterkOSFree(value->any.text->t);
                    value->any.text->t = ((void*)0);
                }
                break;
            case 129:
                if (value->any.binary->b) {
                    sqliterkOSFree(value->any.binary->b);
                    value->any.binary->b = ((void*)0);
                }
                break;
            default:
                break;
        }
        sqliterkOSFree(value->any.memory);
        value->any.memory = ((void*)0);
    }
    value->type = sqliterk_value_type_null;
    return SQLITERK_OK;
}
