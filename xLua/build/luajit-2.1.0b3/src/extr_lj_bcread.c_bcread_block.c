
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSize ;
typedef int LexState ;


 int bcread_mem (int *,int ) ;
 int memcpy (void*,int ,int ) ;

__attribute__((used)) static void bcread_block(LexState *ls, void *q, MSize len)
{
  memcpy(q, bcread_mem(ls, len), len);
}
