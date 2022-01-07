
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snlua {int L; } ;


 int lua_close (int ) ;
 int skynet_free (struct snlua*) ;

void
snlua_release(struct snlua *l) {
 lua_close(l->L);
 skynet_free(l);
}
