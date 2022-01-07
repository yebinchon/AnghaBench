
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef scalar_t__ COLORREF ;


 scalar_t__ ERROR_NOACCESS ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetSysColor (int) ;
 int NUM_SYSCOLORS ;
 scalar_t__ RGB (int,int,int) ;
 int SetLastError (int) ;
 scalar_t__ SetSysColors (int,int*,scalar_t__*) ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;

void Test_SetSysColors()
{
 INT i;
 INT nElements[NUM_SYSCOLORS+1];
 COLORREF crOldColors[NUM_SYSCOLORS];
 COLORREF crColors[NUM_SYSCOLORS+1];


 for (i = 0; i < NUM_SYSCOLORS; i++)
 {
  nElements[i] = i;
  crOldColors[i] = GetSysColor(i);
 }

 for (i = 0; i < NUM_SYSCOLORS+1; i++)
  crColors[i] = RGB(i, 255-i, i*3);
 nElements[NUM_SYSCOLORS] = nElements[0];

 SetLastError(0xdeadbeef);
 ok(SetSysColors(-1, nElements, crColors) == FALSE, "Expected FALSE, got TRUE\n");
 ok(GetLastError() == ERROR_NOACCESS, "Expected ERROR_NOACCESS, got %ld\n", GetLastError());
 ok(SetSysColors(0, nElements, crColors) == TRUE, "Expected TRUE, got FALSE\n");
 ok(SetSysColors(0, ((void*)0), crColors) == TRUE, "Expected TRUE, got FALSE\n");
 ok(SetSysColors(0, nElements, ((void*)0)) == TRUE, "Expected TRUE, got FALSE\n");
 ok(SetSysColors(1, ((void*)0), crColors) == FALSE, "Expected FALSE, got TRUE\n");
 ok(GetLastError() == ERROR_NOACCESS, "Expected ERROR_NOACCESS, got %ld\n", GetLastError());
 ok(SetSysColors(1, nElements, ((void*)0)) == FALSE, "Expected FALSE, got TRUE\n");
 ok(GetLastError() == ERROR_NOACCESS, "Expected ERROR_NOACCESS, got %ld\n", GetLastError());
 ok(SetSysColors(1, nElements, crColors) == TRUE, "Expected TRUE, got FALSE\n");
 ok(SetSysColors(NUM_SYSCOLORS, nElements, crColors) == TRUE, "Expected TRUE, got FALSE\n");
 for (i = 0; i < NUM_SYSCOLORS; i++)
  ok(GetSysColor(nElements[i]) == crColors[i], "Expected %06lx, got %06lx\n", crColors[i], GetSysColor(nElements[i]));


 ok(SetSysColors(NUM_SYSCOLORS+1, nElements, crColors) == TRUE, "Expected TRUE, got FALSE\n");
 nElements[NUM_SYSCOLORS] = 10000;
 ok(SetSysColors(NUM_SYSCOLORS+1, nElements, crColors) == TRUE, "Expected TRUE, got FALSE\n");


 SetSysColors(NUM_SYSCOLORS, nElements, crOldColors);
}
