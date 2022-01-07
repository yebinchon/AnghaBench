
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int MSize ;
typedef int FILE ;


 int LUAL_BUFFERSIZE ;
 scalar_t__ fread (char*,int,int,int *) ;
 char* lj_buf_tmp (TYPE_1__*,int) ;
 int lj_gc_check (TYPE_1__*) ;
 int lj_str_new (TYPE_1__*,char*,size_t) ;
 int setstrV (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void io_file_readall(lua_State *L, FILE *fp)
{
  MSize m, n;
  for (m = LUAL_BUFFERSIZE, n = 0; ; m += m) {
    char *buf = lj_buf_tmp(L, m);
    n += (MSize)fread(buf+n, 1, m-n, fp);
    if (n != m) {
      setstrV(L, L->top++, lj_str_new(L, buf, (size_t)n));
      lj_gc_check(L);
      return;
    }
  }
}
