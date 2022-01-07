
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ wNumbering; scalar_t__ wNumberingStart; int wNumberingStyle; } ;
typedef TYPE_1__ PARAFORMAT2 ;
typedef int BOOL ;


 int PFNS_NEWNUMBER ;

__attribute__((used)) static inline BOOL para_num_same_list( const PARAFORMAT2 *item, const PARAFORMAT2 *base )
{
    return item->wNumbering == base->wNumbering &&
        item->wNumberingStart == base->wNumberingStart &&
        item->wNumberingStyle == base->wNumberingStyle &&
        !(item->wNumberingStyle & PFNS_NEWNUMBER);
}
