
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nHeight; scalar_t__ iRoot; } ;
struct TYPE_6__ {TYPE_3__ root; } ;
struct TYPE_7__ {TYPE_1__ treehdr; } ;
typedef TYPE_2__ lsm_db ;
typedef TYPE_3__ TreeRoot ;


 int dump_node_contents (TYPE_2__*,scalar_t__,char*,int,scalar_t__) ;
 int fflush (int ) ;
 int printf (char*,char const*) ;
 int stdout ;

void dump_tree_contents(lsm_db *pDb, const char *zCaption){
  char zPath[64];
  TreeRoot *p = &pDb->treehdr.root;
  printf("\n%s\n", zCaption);
  zPath[0] = '/';
  if( p->iRoot ){
    dump_node_contents(pDb, p->iRoot, zPath, 1, p->nHeight-1);
  }
  fflush(stdout);
}
