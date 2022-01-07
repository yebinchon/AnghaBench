
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l; double d; } ;
typedef TYPE_1__ ieee_double ;


 int _FPCLASS_ND ;
 int _FPCLASS_NINF ;
 int _FPCLASS_NN ;
 int _FPCLASS_NZ ;
 int _FPCLASS_PD ;
 int _FPCLASS_PINF ;
 int _FPCLASS_PN ;
 int _FPCLASS_PZ ;
 int _FPCLASS_QNAN ;
 int _fpclass (double) ;
 int ok (int,char*,int) ;

void test_fpclass(void)
{
    int class;
    ieee_double tested;

    tested.l = 0xFFFFFFFFFFFFFFFFLL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_QNAN, "class = %d\n", class);
    tested.l = 0xFFF8000000000001LL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_QNAN, "class = %d\n", class);
    tested.l = 0xFFF8000000000000LL;
    class = _fpclass(tested.d);



    ok(class == _FPCLASS_QNAN, "class = %d\n", class);
    tested.l = 0xFFF7FFFFFFFFFFFFLL;
    class = _fpclass(tested.d);




    ok(class == _FPCLASS_QNAN, "class = %d\n", class);
    tested.l = 0xFFF0000000000001LL;
    class = _fpclass(tested.d);




    ok(class == _FPCLASS_QNAN, "class = %d\n", class);
    tested.l = 0xFFF0000000000000LL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_NINF, "class = %d\n", class);
    tested.l = 0xFFEFFFFFFFFFFFFFLL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_NN, "class = %d\n", class);
    tested.l = 0x8010000000000000LL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_NN, "class = %d\n", class);
    tested.l = 0x800FFFFFFFFFFFFFLL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_ND, "class = %d\n", class);
    tested.l = 0x8000000000000001LL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_ND, "class = %d\n", class);
    tested.l = 0x8000000000000000LL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_NZ, "class = %d\n", class);
    tested.l = 0x0000000000000000LL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_PZ, "class = %d\n", class);
    tested.l = 0x0000000000000001LL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_PD, "class = %d\n", class);
    tested.l = 0x000FFFFFFFFFFFFFLL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_PD, "class = %d\n", class);
    tested.l = 0x0010000000000000LL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_PN, "class = %d\n", class);
    tested.l = 0x7FEFFFFFFFFFFFFFLL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_PN, "class = %d\n", class);
    tested.l = 0x7FF0000000000000LL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_PINF, "class = %d\n", class);
    tested.l = 0x7FF0000000000001LL;
    class = _fpclass(tested.d);




    ok(class == _FPCLASS_QNAN, "class = %d\n", class);
    tested.l = 0x7FF7FFFFFFFFFFFFLL;
    class = _fpclass(tested.d);




    ok(class == _FPCLASS_QNAN, "class = %d\n", class);
    tested.l = 0x7FF8000000000000LL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_QNAN, "class = %d\n", class);
    tested.l = 0x7FFFFFFFFFFFFFFFLL;
    class = _fpclass(tested.d);
    ok(class == _FPCLASS_QNAN, "class = %d\n", class);


    class = _fpclass(2.387000);
    ok(class == _FPCLASS_PN, "class = %d\n", class);
}
