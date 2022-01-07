
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_block {int dummy; } ;
typedef int n ;
typedef int lua_State ;


 int invalid_stream (int *,struct read_block*) ;
 int memcpy (double*,double*,int) ;
 double* rb_read (struct read_block*,int) ;

__attribute__((used)) static double
get_real(lua_State *L, struct read_block *rb) {
 double n;
 double * pn = rb_read(rb,sizeof(n));
 if (pn == ((void*)0))
  invalid_stream(L,rb);
 memcpy(&n, pn, sizeof(n));
 return n;
}
