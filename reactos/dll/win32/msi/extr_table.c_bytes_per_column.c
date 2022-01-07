
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int type; } ;
typedef int MSIDATABASE ;
typedef TYPE_1__ MSICOLUMNINFO ;


 int ERR (char*,int) ;
 scalar_t__ MSITYPE_IS_BINARY (int) ;
 int MSITYPE_STRING ;

__attribute__((used)) static inline UINT bytes_per_column( MSIDATABASE *db, const MSICOLUMNINFO *col, UINT bytes_per_strref )
{
    if( MSITYPE_IS_BINARY(col->type) )
        return 2;

    if( col->type & MSITYPE_STRING )
        return bytes_per_strref;

    if( (col->type & 0xff) <= 2)
        return 2;

    if( (col->type & 0xff) != 4 )
        ERR("Invalid column size %u\n", col->type & 0xff);

    return 4;
}
