
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int * fp; } ;
typedef TYPE_1__ IOFileUD ;


 int errno ;
 int * fopen (char const*,char const*) ;
 TYPE_1__* io_file_new (int *) ;
 int lj_lib_checkstr (int *,int) ;
 int lj_strfmt_pushf (int *,char*,char const*,int ) ;
 int luaL_argerror (int *,int,int ) ;
 char* strdata (int ) ;
 int strerror (int ) ;

__attribute__((used)) static IOFileUD *io_file_open(lua_State *L, const char *mode)
{
  const char *fname = strdata(lj_lib_checkstr(L, 1));
  IOFileUD *iof = io_file_new(L);
  iof->fp = fopen(fname, mode);
  if (iof->fp == ((void*)0))
    luaL_argerror(L, 1, lj_strfmt_pushf(L, "%s: %s", fname, strerror(errno)));
  return iof;
}
