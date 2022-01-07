
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* aFile; } ;
struct TYPE_3__ {int sz; scalar_t__ nRef; scalar_t__ a; scalar_t__ zFilename; } ;


 int MX_FILE ;
 int fatalError (char*,int,scalar_t__) ;
 int free (scalar_t__) ;
 TYPE_2__ g ;

__attribute__((used)) static void reformatVfs(void){
  int i;
  for(i=0; i<MX_FILE; i++){
    if( g.aFile[i].sz<0 ) continue;
    if( g.aFile[i].zFilename ){
      free(g.aFile[i].zFilename);
      g.aFile[i].zFilename = 0;
    }
    if( g.aFile[i].nRef>0 ){
      fatalError("file %d still open.  nRef=%d", i, g.aFile[i].nRef);
    }
    g.aFile[i].sz = -1;
    free(g.aFile[i].a);
    g.aFile[i].a = 0;
    g.aFile[i].nRef = 0;
  }
}
