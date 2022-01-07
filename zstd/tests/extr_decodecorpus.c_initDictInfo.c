
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dictOp ;
struct TYPE_4__ {int useDict; size_t dictContentSize; int dictID; int * dictContent; } ;
typedef TYPE_1__ dictInfo ;
typedef int U32 ;
typedef int BYTE ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static dictInfo initDictInfo(int useDict, size_t dictContentSize, BYTE* dictContent, U32 dictID){

    dictInfo dictOp;
    memset(&dictOp, 0, sizeof(dictOp));
    dictOp.useDict = useDict;
    dictOp.dictContentSize = dictContentSize;
    dictOp.dictContent = dictContent;
    dictOp.dictID = dictID;
    return dictOp;
}
