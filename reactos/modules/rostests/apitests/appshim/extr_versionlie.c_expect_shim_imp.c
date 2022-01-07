
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FunctionName; int LibraryName; } ;
typedef TYPE_1__* PHOOKAPI ;
typedef int PCSTR ;


 int lstrcmpA (int ,int ) ;
 int winetest_ok (int,char*,int ,int ,int ) ;

void expect_shim_imp(PHOOKAPI hook, PCSTR library, PCSTR function, PCSTR shim, int* same)
{
    int lib = lstrcmpA(library, hook->LibraryName);
    int fn = lstrcmpA(function, hook->FunctionName);
    winetest_ok(lib == 0, "Expected LibrarayName to be %s, was: %s for %s\n", library, hook->LibraryName, shim);
    winetest_ok(fn == 0, "Expected FunctionName to be %s, was: %s for %s\n", function, hook->FunctionName, shim);
    *same = (lib == 0 && fn == 0);
}
