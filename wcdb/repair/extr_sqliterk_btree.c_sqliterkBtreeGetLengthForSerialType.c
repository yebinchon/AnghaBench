
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sqliterkBtreeGetLengthForSerialType(int serialType)
{
    if (serialType < 0) {
        return 0;
    }
    static int sqliterk_btree_serialtype_fixlengths[12] = {0, 1, 2, 3, 4, 6,
                                                           8, 8, 0, 0, 0, 0};
    if (serialType < 12) {
        return sqliterk_btree_serialtype_fixlengths[serialType];
    }
    return (serialType - 12 - serialType % 2) / 2;
}
