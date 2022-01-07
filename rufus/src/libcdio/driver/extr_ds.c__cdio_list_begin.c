
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * begin; } ;
typedef TYPE_1__ CdioList_t ;
typedef int CdioListNode_t ;


 int cdio_assert (int ) ;

CdioListNode_t *
_cdio_list_begin (const CdioList_t *p_list)
{
  cdio_assert (p_list != ((void*)0));

  return p_list->begin;
}
