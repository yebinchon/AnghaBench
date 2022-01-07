
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nBuffer; int iBufferOfst; int aBuffer; } ;
typedef TYPE_1__ DemoFile ;


 int SQLITE_OK ;
 int demoDirectWrite (TYPE_1__*,int ,scalar_t__,int ) ;

__attribute__((used)) static int demoFlushBuffer(DemoFile *p){
  int rc = SQLITE_OK;
  if( p->nBuffer ){
    rc = demoDirectWrite(p, p->aBuffer, p->nBuffer, p->iBufferOfst);
    p->nBuffer = 0;
  }
  return rc;
}
