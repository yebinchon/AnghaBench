
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ n; } ;
typedef TYPE_1__ Fts5Buffer ;



void sqlite3Fts5BufferZero(Fts5Buffer *pBuf){
  pBuf->n = 0;
}
