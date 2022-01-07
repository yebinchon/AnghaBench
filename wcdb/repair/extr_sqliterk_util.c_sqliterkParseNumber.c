
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int memcpy (double*,unsigned char*,int) ;

int sqliterkParseNumber(const unsigned char *data, int offset, double *value)
{
    if (!data || !value) {
        return SQLITERK_MISUSE;
    }
    unsigned char out[8];
    const unsigned char *begin = data + offset;
    int i;
    for (i = 0; i < 8; i++) {



        out[i] = begin[8 - 1 - i];
    }
    memcpy(value, out, 8);
    return SQLITERK_OK;
}
