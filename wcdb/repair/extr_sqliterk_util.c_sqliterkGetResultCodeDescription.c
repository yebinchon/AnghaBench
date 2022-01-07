
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *sqliterkGetResultCodeDescription(int result)
{
    switch (result) {
        case 129:
            return "SQLITERK_OK";
        case 135:
            return "SQLITERK_CANTOPEN";
        case 131:
            return "SQLITERK_MISUSE";
        case 132:
            return "SQLITERK_IOERR";
        case 130:
            return "SQLITERK_NOMEM";
        case 128:
            return "SQLITERK_SHORT_READ";
        case 134:
            return "SQLITERK_DAMAGED";
        case 133:
            return "SQLITERK_DISCARD";
        default:
            break;
    }
    return "SQLITERK_UNKNOWN";
}
