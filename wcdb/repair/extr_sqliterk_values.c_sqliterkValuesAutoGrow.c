
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int capacity; int * values; } ;
typedef TYPE_1__ sqliterk_values ;
typedef int sqliterk_value ;


 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 int memcpy (int *,int *,int) ;
 int sqliterkOSFree (int *) ;
 int * sqliterkOSMalloc (int) ;

__attribute__((used)) static int sqliterkValuesAutoGrow(sqliterk_values *values)
{
    if (!values) {
        return SQLITERK_MISUSE;
    }
    if (values->count >= values->capacity) {
        int oldCapacity = values->capacity;
        if (oldCapacity <= 0) {

            values->capacity = 4;
        } else {
            values->capacity = oldCapacity * 2;
        }
        sqliterk_value *newValues =
            sqliterkOSMalloc(sizeof(sqliterk_value) * (values->capacity + 1));
        if (!newValues) {
            return SQLITERK_NOMEM;
        }
        if (values->values) {
            memcpy(newValues, values->values,
                   sizeof(sqliterk_value) * oldCapacity);
            sqliterkOSFree(values->values);
        }
        values->values = newValues;
    }
    return SQLITERK_OK;
}
