
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int multilist_t ;
struct TYPE_3__ {int b_birth; int b_dva; int b_spa; } ;
typedef TYPE_1__ arc_buf_hdr_t ;


 int ASSERT (int) ;
 int HDR_EMPTY (TYPE_1__*) ;
 unsigned int buf_hash (int ,int *,int ) ;
 unsigned int multilist_get_num_sublists (int *) ;

unsigned int
arc_state_multilist_index_func(multilist_t *ml, void *obj)
{
 arc_buf_hdr_t *hdr = obj;






 ASSERT(!HDR_EMPTY(hdr));
 return (buf_hash(hdr->b_spa, &hdr->b_dva, hdr->b_birth) %
     multilist_get_num_sublists(ml));
}
