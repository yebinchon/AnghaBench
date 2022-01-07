
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_4__ {scalar_t__ iLastPos; } ;
typedef TYPE_1__ DocList ;


 int appendVarint (TYPE_1__*,int ) ;

__attribute__((used)) static void docListAddDocid(DocList *d, sqlite_int64 iDocid){
  appendVarint(d, iDocid);
  d->iLastPos = 0;
}
