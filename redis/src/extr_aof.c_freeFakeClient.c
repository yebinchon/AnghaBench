
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int watched_keys; int reply; int querybuf; } ;


 int freeClientMultiState (struct client*) ;
 int listRelease (int ) ;
 int sdsfree (int ) ;
 int zfree (struct client*) ;

void freeFakeClient(struct client *c) {
    sdsfree(c->querybuf);
    listRelease(c->reply);
    listRelease(c->watched_keys);
    freeClientMultiState(c);
    zfree(c);
}
