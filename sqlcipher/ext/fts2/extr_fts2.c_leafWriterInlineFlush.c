
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fulltext_vtab ;
struct TYPE_5__ {scalar_t__ nData; scalar_t__ pData; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ LeafWriter ;


 int VARINT_MAX ;
 int assert (int) ;
 int leafWriterInternalFlush (int *,TYPE_2__*,int,scalar_t__) ;
 int memcpy (scalar_t__,char const*,int) ;
 int putVarint (char*,int) ;

__attribute__((used)) static int leafWriterInlineFlush(fulltext_vtab *v, LeafWriter *pWriter,
                                 const char *pTerm, int nTerm,
                                 int iDoclistData){
  char c[VARINT_MAX+VARINT_MAX];
  int iData, n = putVarint(c, 0);
  n += putVarint(c+n, nTerm);






  assert( iDoclistData>=n+nTerm );

  iData = iDoclistData-(n+nTerm);
  memcpy(pWriter->data.pData+iData, c, n);
  memcpy(pWriter->data.pData+iData+n, pTerm, nTerm);

  return leafWriterInternalFlush(v, pWriter, iData, pWriter->data.nData-iData);
}
