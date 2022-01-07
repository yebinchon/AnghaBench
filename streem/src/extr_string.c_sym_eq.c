
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_key {scalar_t__ len; int ptr; } ;
typedef int khint_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static khint_t
sym_eq(struct sym_key a, struct sym_key b)
{
  if (a.len != b.len) return FALSE;
  if (memcmp(a.ptr, b.ptr, a.len) == 0) return TRUE;
  return FALSE;
}
