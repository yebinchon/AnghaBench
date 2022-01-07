
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_9__ {int type; int * fp; } ;
typedef TYPE_2__ IOFileUD ;


 int IOFILE_TYPE_FILE ;
 int IOFILE_TYPE_MASK ;
 int IOFILE_TYPE_PIPE ;
 int IOFILE_TYPE_STDF ;
 int _pclose (int *) ;
 scalar_t__ fclose (int *) ;
 int luaL_execresult (TYPE_1__*,int) ;
 int luaL_fileresult (TYPE_1__*,int,int *) ;
 int lua_assert (int) ;
 int lua_pushliteral (TYPE_1__*,char*) ;
 int pclose (int *) ;
 int setnilV (int ) ;

__attribute__((used)) static int io_file_close(lua_State *L, IOFileUD *iof)
{
  int ok;
  if ((iof->type & IOFILE_TYPE_MASK) == IOFILE_TYPE_FILE) {
    ok = (fclose(iof->fp) == 0);
  } else if ((iof->type & IOFILE_TYPE_MASK) == IOFILE_TYPE_PIPE) {
    int stat = -1;





    lua_assert(0);
    return 0;





    ok = (stat != -1);

  } else {
    lua_assert((iof->type & IOFILE_TYPE_MASK) == IOFILE_TYPE_STDF);
    setnilV(L->top++);
    lua_pushliteral(L, "cannot close standard file");
    return 2;
  }
  iof->fp = ((void*)0);
  return luaL_fileresult(L, ok, ((void*)0));
}
