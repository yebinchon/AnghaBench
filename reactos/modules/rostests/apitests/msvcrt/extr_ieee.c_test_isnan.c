
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l; double d; } ;
typedef TYPE_1__ ieee_double ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ _isnan (double) ;
 int ok (int,char*) ;

void test_isnan(void)
{
    ieee_double tested;

    tested.l = 0xFFFFFFFFFFFFFFFFLL;
    ok(_isnan(tested.d) == TRUE, "_isnan = FALSE\n");
    tested.l = 0xFFF8000000000001LL;
    ok(_isnan(tested.d) == TRUE, "_isnan = FALSE\n");
    tested.l = 0xFFF8000000000000LL;
    ok(_isnan(tested.d) == TRUE, "_isnan = FALSE\n");
    tested.l = 0xFFF7FFFFFFFFFFFFLL;
    ok(_isnan(tested.d) == TRUE, "_isnan = FALSE\n");
    tested.l = 0xFFF0000000000001LL;
    ok(_isnan(tested.d) == TRUE, "_isnan = FALSE\n");
    tested.l = 0xFFF0000000000000LL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0xFFEFFFFFFFFFFFFFLL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x8010000000000000LL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x800FFFFFFFFFFFFFLL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x8000000000000001LL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x8000000000000000LL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x0000000000000000LL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x0000000000000001LL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x000FFFFFFFFFFFFFLL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x0010000000000000LL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x7FEFFFFFFFFFFFFFLL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x7FF0000000000000LL;
    ok(_isnan(tested.d) == FALSE, "_isnan = TRUE\n");
    tested.l = 0x7FF0000000000001LL;
    ok(_isnan(tested.d) == TRUE, "_isnan = FALSE\n");
    tested.l = 0x7FF7FFFFFFFFFFFFLL;
    ok(_isnan(tested.d) == TRUE, "_isnan = FALSE\n");
    tested.l = 0x7FF8000000000000LL;
    ok(_isnan(tested.d) == TRUE, "_isnan = FALSE\n");
    tested.l = 0x7FFFFFFFFFFFFFFFLL;
    ok(_isnan(tested.d) == TRUE, "_isnan = FALSE\n");


    ok(_isnan(2.387000) == FALSE, "_isnan = TRUE\n");
}
