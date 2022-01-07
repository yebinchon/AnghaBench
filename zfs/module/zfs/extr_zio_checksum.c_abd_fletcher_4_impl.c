
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zio_abd_checksum_data_t ;
typedef int uint64_t ;
typedef int abd_t ;
struct TYPE_2__ {int (* acf_fini ) (int *) ;int acf_iter; int (* acf_init ) (int *) ;} ;


 int abd_iterate_func (int *,int ,int ,int ,int *) ;
 TYPE_1__ fletcher_4_abd_ops ;
 int stub1 (int *) ;
 int stub2 (int *) ;

__attribute__((used)) static inline void
abd_fletcher_4_impl(abd_t *abd, uint64_t size, zio_abd_checksum_data_t *acdp)
{
 fletcher_4_abd_ops.acf_init(acdp);
 abd_iterate_func(abd, 0, size, fletcher_4_abd_ops.acf_iter, acdp);
 fletcher_4_abd_ops.acf_fini(acdp);
}
