
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protseq_ops {int name; } ;


 unsigned int ARRAY_SIZE (struct protseq_ops const*) ;
 struct protseq_ops const* protseq_list ;
 int strcmp (int ,char const*) ;

const struct protseq_ops *rpcrt4_get_protseq_ops(const char *protseq)
{
  unsigned int i;
  for(i = 0; i < ARRAY_SIZE(protseq_list); i++)
    if (!strcmp(protseq_list[i].name, protseq))
      return &protseq_list[i];
  return ((void*)0);
}
