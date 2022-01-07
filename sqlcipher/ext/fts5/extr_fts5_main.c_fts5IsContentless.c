
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pConfig; } ;
struct TYPE_7__ {TYPE_2__ p; } ;
struct TYPE_5__ {scalar_t__ eContent; } ;
typedef TYPE_3__ Fts5FullTable ;


 scalar_t__ FTS5_CONTENT_NONE ;

__attribute__((used)) static int fts5IsContentless(Fts5FullTable *pTab){
  return pTab->p.pConfig->eContent==FTS5_CONTENT_NONE;
}
