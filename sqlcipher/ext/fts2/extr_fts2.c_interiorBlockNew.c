
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_5__ {int data; int term; } ;
typedef TYPE_1__ InteriorBlock ;


 int INTERIOR_MAX ;
 int VARINT_MAX ;
 int dataBufferInit (int *,int ) ;
 int dataBufferReplace (int *,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int putVarint (char*,int) ;
 TYPE_1__* sqlite3_malloc (int) ;

__attribute__((used)) static InteriorBlock *interiorBlockNew(int iHeight, sqlite_int64 iChildBlock,
                                       const char *pTerm, int nTerm){
  InteriorBlock *block = sqlite3_malloc(sizeof(InteriorBlock));
  char c[VARINT_MAX+VARINT_MAX];
  int n;

  if( block ){
    memset(block, 0, sizeof(*block));
    dataBufferInit(&block->term, 0);
    dataBufferReplace(&block->term, pTerm, nTerm);

    n = putVarint(c, iHeight);
    n += putVarint(c+n, iChildBlock);
    dataBufferInit(&block->data, INTERIOR_MAX);
    dataBufferReplace(&block->data, c, n);
  }
  return block;
}
