
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_t ;



__attribute__((used)) static inline void InitQueue(block_t **pp_head, block_t ***ppp_tail)
{
    *pp_head = ((void*)0);
    *ppp_tail = pp_head;
}
