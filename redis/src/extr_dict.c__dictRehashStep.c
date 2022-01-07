
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iterators; } ;
typedef TYPE_1__ dict ;


 int dictRehash (TYPE_1__*,int) ;

__attribute__((used)) static void _dictRehashStep(dict *d) {
    if (d->iterators == 0) dictRehash(d,1);
}
