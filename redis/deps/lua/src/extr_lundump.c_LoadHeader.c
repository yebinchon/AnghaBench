
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LoadState ;


 int IF (int,char*) ;
 int LUAC_HEADERSIZE ;
 int LoadBlock (int *,char*,int) ;
 int luaU_header (char*) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void LoadHeader(LoadState* S)
{
 char h[LUAC_HEADERSIZE];
 char s[LUAC_HEADERSIZE];
 luaU_header(h);
 LoadBlock(S,s,LUAC_HEADERSIZE);
 IF (memcmp(h,s,LUAC_HEADERSIZE)!=0, "bad header");
}
