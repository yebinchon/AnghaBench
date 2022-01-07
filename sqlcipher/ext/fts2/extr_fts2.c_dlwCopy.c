
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DLWriter ;
typedef int DLReader ;


 int dlrDocData (int *) ;
 int dlrDocDataBytes (int *) ;
 int dlrDocid (int *) ;
 int dlwAppend (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void dlwCopy(DLWriter *pWriter, DLReader *pReader){
  dlwAppend(pWriter, dlrDocData(pReader), dlrDocDataBytes(pReader),
            dlrDocid(pReader), dlrDocid(pReader));
}
