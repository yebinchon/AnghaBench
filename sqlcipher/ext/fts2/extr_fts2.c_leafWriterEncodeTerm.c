
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nData; } ;
struct TYPE_6__ {int nData; char const* pData; } ;
struct TYPE_5__ {TYPE_3__ term; TYPE_4__ data; } ;
typedef TYPE_1__ LeafWriter ;


 int VARINT_MAX ;
 int assert (int) ;
 int dataBufferAppend2 (TYPE_4__*,char*,int,char const*,int) ;
 int dataBufferReplace (TYPE_3__*,char const*,int) ;
 int putVarint (char*,int) ;

__attribute__((used)) static int leafWriterEncodeTerm(LeafWriter *pWriter,
                                const char *pTerm, int nTerm){
  char c[VARINT_MAX+VARINT_MAX];
  int n, nPrefix = 0;

  assert( nTerm>0 );
  while( nPrefix<pWriter->term.nData &&
         pTerm[nPrefix]==pWriter->term.pData[nPrefix] ){
    nPrefix++;

    assert( nPrefix<nTerm );
  }

  if( pWriter->data.nData==0 ){





    n = putVarint(c, '\0');
    n += putVarint(c+n, nTerm);
    dataBufferAppend2(&pWriter->data, c, n, pTerm, nTerm);
  }else{





    n = putVarint(c, nPrefix);
    n += putVarint(c+n, nTerm-nPrefix);
    dataBufferAppend2(&pWriter->data, c, n, pTerm+nPrefix, nTerm-nPrefix);
  }
  dataBufferReplace(&pWriter->term, pTerm, nTerm);

  return nPrefix+1;
}
