
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {char const* zJContent; } ;
struct TYPE_8__ {TYPE_1__ u; scalar_t__ n; scalar_t__ jnFlags; scalar_t__ eType; } ;
struct TYPE_7__ {size_t nNode; size_t nAlloc; TYPE_3__* aNode; } ;
typedef TYPE_2__ JsonParse ;
typedef TYPE_3__ JsonNode ;


 int jsonParseAddNodeExpand (TYPE_2__*,scalar_t__,scalar_t__,char const*) ;

__attribute__((used)) static int jsonParseAddNode(
  JsonParse *pParse,
  u32 eType,
  u32 n,
  const char *zContent
){
  JsonNode *p;
  if( pParse->nNode>=pParse->nAlloc ){
    return jsonParseAddNodeExpand(pParse, eType, n, zContent);
  }
  p = &pParse->aNode[pParse->nNode];
  p->eType = (u8)eType;
  p->jnFlags = 0;
  p->n = n;
  p->u.zJContent = zContent;
  return pParse->nNode++;
}
