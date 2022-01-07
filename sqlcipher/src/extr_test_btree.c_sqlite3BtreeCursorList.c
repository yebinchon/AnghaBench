
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {size_t iPage; int curFlags; scalar_t__ eState; int * aiIdx; int pgnoRoot; TYPE_1__** apPage; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {TYPE_4__* pCursor; } ;
struct TYPE_8__ {TYPE_3__* pBt; } ;
struct TYPE_7__ {int pgno; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ Btree ;
typedef TYPE_3__ BtShared ;
typedef TYPE_4__ BtCursor ;


 int BTCF_WriteFlag ;
 scalar_t__ CURSOR_VALID ;
 int sqlite3DebugPrintf (char*,TYPE_4__*,int ,char*,int ,int ,char*) ;

void sqlite3BtreeCursorList(Btree *p){
}
