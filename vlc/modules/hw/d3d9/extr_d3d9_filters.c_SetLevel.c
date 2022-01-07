
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_level {int Range; int level; } ;


 int StoreLevel (struct filter_level*,int *,float) ;
 int atomic_store (int *,int ) ;

__attribute__((used)) static void SetLevel(struct filter_level *range, float val)
{
    atomic_store( &range->level, StoreLevel( range, &range->Range, val ) );
}
