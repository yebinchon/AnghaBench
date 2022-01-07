
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ end; } ;



__attribute__((used)) static inline struct scatterlist *
sg_next(struct scatterlist *sg)
{
 if (sg->end)
  return (((void*)0));

 return (sg + 1);
}
