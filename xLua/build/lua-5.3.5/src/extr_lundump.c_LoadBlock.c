
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Z; } ;
typedef TYPE_1__ LoadState ;


 int error (TYPE_1__*,char*) ;
 scalar_t__ luaZ_read (int ,void*,size_t) ;

__attribute__((used)) static void LoadBlock (LoadState *S, void *b, size_t size) {
  if (luaZ_read(S->Z, b, size) != 0)
    error(S, "truncated");
}
