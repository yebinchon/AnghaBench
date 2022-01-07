
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_page_type ;







const char *sqliterkPageGetTypeName(sqliterk_page_type type)
{
    char *name;
    switch (type) {
        case 131:
            name = "interior-index btree";
            break;
        case 130:
            name = "interior-table btree";
            break;
        case 129:
            name = "leaf-index btree";
            break;
        case 128:
            name = "leaf-table btree";
            break;
        default:
            name = "unknown page";
            break;
    }
    return name;
}
