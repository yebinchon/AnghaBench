
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nMapLimit; TYPE_1__* pLruLast; TYPE_1__* pLruFirst; } ;
struct TYPE_6__ {scalar_t__ nRef; int flags; int iPg; struct TYPE_6__* pLruPrev; struct TYPE_6__* pLruNext; } ;
typedef TYPE_1__ Page ;
typedef TYPE_2__ FileSystem ;


 int PAGE_FREE ;
 int assert (int) ;
 TYPE_1__* fsPageFindInHash (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void assert_lists_are_ok(FileSystem *pFS){
}
