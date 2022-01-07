
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int varValue; } ;
struct TYPE_4__ {int cCustData; TYPE_2__* prgCustData; } ;
typedef int CUSTDATAITEM ;
typedef TYPE_1__ CUSTDATA ;


 int ClearCustData (TYPE_1__*) ;
 TYPE_2__* CoTaskMemAlloc (int) ;
 int NUM_CUST_ITEMS ;
 int VariantInit (int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_ClearCustData(void)
{
  CUSTDATA ci;
  unsigned i;

  ci.cCustData = NUM_CUST_ITEMS;
  ci.prgCustData = CoTaskMemAlloc( sizeof(CUSTDATAITEM) * NUM_CUST_ITEMS );
  for (i = 0; i < NUM_CUST_ITEMS; i++)
    VariantInit(&ci.prgCustData[i].varValue);
  ClearCustData(&ci);
  ok(!ci.cCustData && !ci.prgCustData, "ClearCustData didn't clear fields!\n");
}
