
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_10__ {int strempty; } ;
typedef scalar_t__ MSize ;
typedef int FILE ;


 int EOF ;
 TYPE_7__* G (TYPE_1__*) ;
 int fread (char*,int,scalar_t__,int *) ;
 int getc (int *) ;
 char* lj_buf_tmp (TYPE_1__*,scalar_t__) ;
 int lj_gc_check (TYPE_1__*) ;
 int * lj_str_new (TYPE_1__*,char*,size_t) ;
 int setstrV (TYPE_1__*,int ,int *) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int io_file_readlen(lua_State *L, FILE *fp, MSize m)
{
  if (m) {
    char *buf = lj_buf_tmp(L, m);
    MSize n = (MSize)fread(buf, 1, m, fp);
    setstrV(L, L->top++, lj_str_new(L, buf, (size_t)n));
    lj_gc_check(L);
    return (n > 0 || m == 0);
  } else {
    int c = getc(fp);
    ungetc(c, fp);
    setstrV(L, L->top++, &G(L)->strempty);
    return (c != EOF);
  }
}
