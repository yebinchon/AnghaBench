
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CdioList_t ;


 int * calloc (int,int) ;

CdioList_t *
_cdio_list_new (void)
{
  CdioList_t *p_new_obj = calloc (1, sizeof (CdioList_t));

  return p_new_obj;
}
