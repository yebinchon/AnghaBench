
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_btree_type ;
const char *sqliterkBtreeGetTypeName(sqliterk_btree_type type)
{
    char *name;
    switch (type) {
        case 133:
            name = "sqlite_autoindex";
            break;
        case 130:
            name = "sqlite_sequence";
            break;
        case 129:
            name = "sqlite_stat";
            break;
        case 131:
            name = "sqlite_master";
            break;
        case 128:
            name = "table";
            break;
        case 132:
            name = "index";
            break;
        default:
            name = "unknown";
            break;
    }
    return name;
}
