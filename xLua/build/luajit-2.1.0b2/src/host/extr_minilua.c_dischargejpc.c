
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int jpc; int pc; } ;
typedef TYPE_1__ FuncState ;


 int patchlistaux (TYPE_1__*,int,int ,int,int ) ;

__attribute__((used)) static void dischargejpc(FuncState*fs){
patchlistaux(fs,fs->jpc,fs->pc,((1<<8)-1),fs->pc);
fs->jpc=(-1);
}
