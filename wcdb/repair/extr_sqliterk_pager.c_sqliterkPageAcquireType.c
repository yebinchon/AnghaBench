
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pagesize; int file; } ;
typedef TYPE_1__ sqliterk_pager ;
typedef int sqliterk_page_type ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkOSRead (int ,scalar_t__,unsigned char*,size_t*) ;
 scalar_t__ sqliterkPagenoHeaderOffset (int) ;
 int sqliterkPagerIsPagenoValid (TYPE_1__*,int) ;
 int sqliterkParseInt (unsigned char*,int ,int,int*) ;




 int sqliterk_page_type_unknown ;

int sqliterkPageAcquireType(sqliterk_pager *pager,
                            int pageno,
                            sqliterk_page_type *type)
{



    if (!pager || sqliterkPagerIsPagenoValid(pager, pageno) != SQLITERK_OK ||
        !type) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    unsigned char typedata;
    size_t typesize = 1;
    rc = sqliterkOSRead(pager->file,
                        sqliterkPagenoHeaderOffset(pageno) +
                            (pageno - 1) * pager->pagesize,
                        &typedata, &typesize);
    if (rc != SQLITERK_OK) {
        goto sqliterkPageAcquireType_Failed;
    }

    int theType;
    sqliterkParseInt(&typedata, 0, 1, &theType);
    switch (theType) {
        case 131:
        case 130:
        case 129:
        case 128:
            *type = theType;
            break;
        default:
            *type = sqliterk_page_type_unknown;
            break;
    }
    return SQLITERK_OK;

sqliterkPageAcquireType_Failed:
    *type = sqliterk_page_type_unknown;
    return rc;
}
