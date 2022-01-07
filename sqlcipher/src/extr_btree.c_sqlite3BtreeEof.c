
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ eState; } ;
typedef TYPE_1__ BtCursor ;


 scalar_t__ CURSOR_VALID ;

int sqlite3BtreeEof(BtCursor *pCur){




  return (CURSOR_VALID!=pCur->eState);
}
