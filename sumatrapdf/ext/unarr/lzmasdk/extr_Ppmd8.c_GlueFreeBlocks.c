
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int GlueCount; scalar_t__ LoUnit; scalar_t__ HiUnit; scalar_t__* FreeList; int Stamps; } ;
struct TYPE_7__ {scalar_t__ Stamp; scalar_t__ NU; scalar_t__ Next; } ;
typedef scalar_t__ CPpmd8_Node_Ref ;
typedef TYPE_1__ CPpmd8_Node ;
typedef TYPE_2__ CPpmd8 ;


 scalar_t__ EMPTY_NODE ;
 unsigned int I2U (unsigned int) ;
 int InsertNode (TYPE_2__*,TYPE_1__*,unsigned int) ;
 TYPE_1__* NODE (scalar_t__) ;
 unsigned int PPMD_NUM_INDEXES ;
 unsigned int U2I (unsigned int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void GlueFreeBlocks(CPpmd8 *p)
{
  CPpmd8_Node_Ref head = 0;
  CPpmd8_Node_Ref *prev = &head;
  unsigned i;

  p->GlueCount = 1 << 13;
  memset(p->Stamps, 0, sizeof(p->Stamps));



  if (p->LoUnit != p->HiUnit)
    ((CPpmd8_Node *)p->LoUnit)->Stamp = 0;


  for (i = 0; i < PPMD_NUM_INDEXES; i++)
  {
    CPpmd8_Node_Ref next = (CPpmd8_Node_Ref)p->FreeList[i];
    p->FreeList[i] = 0;
    while (next != 0)
    {
      CPpmd8_Node *node = NODE(next);
      if (node->NU != 0)
      {
        CPpmd8_Node *node2;
        *prev = next;
        prev = &(node->Next);
        while ((node2 = node + node->NU)->Stamp == EMPTY_NODE)
        {
          node->NU += node2->NU;
          node2->NU = 0;
        }
      }
      next = node->Next;
    }
  }
  *prev = 0;


  while (head != 0)
  {
    CPpmd8_Node *node = NODE(head);
    unsigned nu;
    head = node->Next;
    nu = node->NU;
    if (nu == 0)
      continue;
    for (; nu > 128; nu -= 128, node += 128)
      InsertNode(p, node, PPMD_NUM_INDEXES - 1);
    if (I2U(i = U2I(nu)) != nu)
    {
      unsigned k = I2U(--i);
      InsertNode(p, node + k, nu - k - 1);
    }
    InsertNode(p, node, i);
  }
}
