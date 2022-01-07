
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* aFile; } ;
struct TYPE_3__ {int sz; scalar_t__ nRef; scalar_t__ a; scalar_t__ zFilename; } ;


 int MX_FILE ;
 TYPE_2__ g ;

__attribute__((used)) static void formatVfs(void){
  int i;
  for(i=0; i<MX_FILE; i++){
    g.aFile[i].sz = -1;
    g.aFile[i].zFilename = 0;
    g.aFile[i].a = 0;
    g.aFile[i].nRef = 0;
  }
}
