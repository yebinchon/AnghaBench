#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt32 ;
typedef  void* UInt16 ;
struct TYPE_8__ {scalar_t__ AlignOffset; scalar_t__ Size; int GlueCount; scalar_t__ LoUnit; scalar_t__ HiUnit; scalar_t__* FreeList; } ;
struct TYPE_7__ {scalar_t__ Next; scalar_t__ Prev; int Stamp; unsigned int NU; } ;
typedef  scalar_t__ CPpmd7_Node_Ref ;
typedef  TYPE_1__ CPpmd7_Node ;
typedef  TYPE_2__ CPpmd7 ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,unsigned int) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 unsigned int PPMD_NUM_INDEXES ; 
 unsigned int FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(CPpmd7 *p)
{
  #ifdef PPMD_32BIT
  CPpmd7_Node headItem;
  CPpmd7_Node_Ref head = &headItem;
  #else
  CPpmd7_Node_Ref head = p->AlignOffset + p->Size;
  #endif
  
  CPpmd7_Node_Ref n = head;
  unsigned i;

  p->GlueCount = 255;

  /* create doubly-linked list of free blocks */
  for (i = 0; i < PPMD_NUM_INDEXES; i++)
  {
    UInt16 nu = FUNC0(i);
    CPpmd7_Node_Ref next = (CPpmd7_Node_Ref)p->FreeList[i];
    p->FreeList[i] = 0;
    while (next != 0)
    {
      CPpmd7_Node *node = FUNC2(next);
      node->Next = n;
      n = FUNC2(n)->Prev = next;
      next = *(const CPpmd7_Node_Ref *)node;
      node->Stamp = 0;
      node->NU = (UInt16)nu;
    }
  }
  FUNC2(head)->Stamp = 1;
  FUNC2(head)->Next = n;
  FUNC2(n)->Prev = head;
  if (p->LoUnit != p->HiUnit)
    ((CPpmd7_Node *)p->LoUnit)->Stamp = 1;
  
  /* Glue free blocks */
  while (n != head)
  {
    CPpmd7_Node *node = FUNC2(n);
    UInt32 nu = (UInt32)node->NU;
    for (;;)
    {
      CPpmd7_Node *node2 = FUNC2(n) + nu;
      nu += node2->NU;
      if (node2->Stamp != 0 || nu >= 0x10000)
        break;
      FUNC2(node2->Prev)->Next = node2->Next;
      FUNC2(node2->Next)->Prev = node2->Prev;
      node->NU = (UInt16)nu;
    }
    n = node->Next;
  }
  
  /* Fill lists of free blocks */
  for (n = FUNC2(head)->Next; n != head;)
  {
    CPpmd7_Node *node = FUNC2(n);
    unsigned nu;
    CPpmd7_Node_Ref next = node->Next;
    for (nu = node->NU; nu > 128; nu -= 128, node += 128)
      FUNC1(p, node, PPMD_NUM_INDEXES - 1);
    if (FUNC0(i = FUNC3(nu)) != nu)
    {
      unsigned k = FUNC0(--i);
      FUNC1(p, node + k, nu - k - 1);
    }
    FUNC1(p, node, i);
    n = next;
  }
}