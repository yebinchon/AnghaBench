
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int arc_buf_hdr_t ;
typedef scalar_t__ arc_buf_contents_t ;
typedef int abd_t ;


 scalar_t__ ARC_BUFC_DATA ;
 scalar_t__ ARC_BUFC_METADATA ;
 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int * abd_alloc (int ,int ) ;
 scalar_t__ arc_buf_type (int *) ;
 int arc_get_data_impl (int *,int ,void*) ;

__attribute__((used)) static abd_t *
arc_get_data_abd(arc_buf_hdr_t *hdr, uint64_t size, void *tag)
{
 arc_buf_contents_t type = arc_buf_type(hdr);

 arc_get_data_impl(hdr, size, tag);
 if (type == ARC_BUFC_METADATA) {
  return (abd_alloc(size, B_TRUE));
 } else {
  ASSERT(type == ARC_BUFC_DATA);
  return (abd_alloc(size, B_FALSE));
 }
}
