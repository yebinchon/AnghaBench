
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkParseVarint64 (unsigned char const*,int,int*,scalar_t__*) ;

int sqliterkParseVarint(const unsigned char *data,
                        int offset,
                        int *length,
                        int *value)
{
    if (!value) {
        return SQLITERK_MISUSE;
    }
    int64_t out;
    int rc = sqliterkParseVarint64(data, offset, length, &out);
    if (rc != SQLITERK_OK) {
        return rc;
    }
    *value = (int) out;
    return SQLITERK_OK;
}
