
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int a ;
typedef int Table ;
typedef int Node ;


 int * gnode (int const*,int ) ;
 int * hashmod (int const*,unsigned int) ;
 scalar_t__ luai_numeq (int ,int ) ;
 int memcpy (unsigned int*,int *,int) ;
 int numints ;

__attribute__((used)) static Node *hashnum (const Table *t, lua_Number n) {
  unsigned int a[numints];
  int i;
  if (luai_numeq(n, 0))
    return gnode(t, 0);
  memcpy(a, &n, sizeof(a));
  for (i = 1; i < numints; i++) a[0] += a[i];
  return hashmod(t, a[0]);
}
