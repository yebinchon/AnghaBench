
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CdioList_t ;
typedef int CdioDataFree_t ;


 int _cdio_list_begin (int *) ;
 scalar_t__ _cdio_list_length (int *) ;
 int _cdio_list_node_free (int ,int,int ) ;
 int free (int *) ;

void
_cdio_list_free (CdioList_t *p_list, int free_data, CdioDataFree_t free_fn)
{
  while (_cdio_list_length (p_list))
    _cdio_list_node_free (_cdio_list_begin (p_list), free_data, free_fn);

  free (p_list);
}
