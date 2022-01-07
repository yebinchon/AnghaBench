
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int VARIANT ;


 scalar_t__ VT_EMPTY ;
 scalar_t__ V_VT (int *) ;
 int VariantInit (int *) ;
 int memset (int *,int,int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_VariantInit(void)
{
  VARIANT v;

  memset(&v, -1, sizeof(v));
  VariantInit(&v);
  ok(V_VT(&v) == VT_EMPTY, "VariantInit() returned vt %d\n", V_VT(&v));
}
