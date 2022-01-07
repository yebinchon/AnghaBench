
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_2__ {int uRandom; } ;


 TYPE_1__ g ;
 int memcpy (char*,int *,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int inmemRandomness(sqlite3_vfs *NotUsed, int nBuf, char *zBuf){
  memset(zBuf, 0, nBuf);
  memcpy(zBuf, &g.uRandom, nBuf<sizeof(g.uRandom) ? nBuf : sizeof(g.uRandom));
  return nBuf;
}
