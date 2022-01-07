
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LsmPgno ;



__attribute__((used)) static int fsHashKey(int nHash, LsmPgno iPg){
  return (iPg % nHash);
}
