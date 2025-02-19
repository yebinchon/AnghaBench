
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lb ;
struct TYPE_3__ {int lbColor; int lbStyle; int lbHatch; } ;
typedef TYPE_1__ LOGBRUSH ;
typedef scalar_t__ HBRUSH ;


 int BS_HATCHED ;
 int BS_SOLID ;
 scalar_t__ CreateHatchBrush (int,int) ;
 int DeleteObject (scalar_t__) ;
 int GetLastError () ;
 int GetObjectW (scalar_t__,int,TYPE_1__*) ;
 int HS_API_MAX ;
 int HS_DIAGCROSS ;
 int RGB (int,int,int) ;
 int SetLastError (int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_hatch_brush(void)
{
    int i, size;
    HBRUSH brush;
    LOGBRUSH lb;

    for (i = 0; i < 20; i++)
    {
        SetLastError( 0xdeadbeef );
        brush = CreateHatchBrush( i, RGB(12,34,56) );
        if (i < HS_API_MAX)
        {
            ok( brush != 0, "%u: CreateHatchBrush failed err %u\n", i, GetLastError() );
            size = GetObjectW( brush, sizeof(lb), &lb );
            ok( size == sizeof(lb), "wrong size %u\n", size );
            ok( lb.lbColor == RGB(12,34,56), "wrong color %08x\n", lb.lbColor );
            if (i <= HS_DIAGCROSS)
            {
                ok( lb.lbStyle == BS_HATCHED, "wrong style %u\n", lb.lbStyle );
                ok( lb.lbHatch == i, "wrong hatch %lu/%u\n", lb.lbHatch, i );
            }
            else
            {
                ok( lb.lbStyle == BS_SOLID, "wrong style %u\n", lb.lbStyle );
                ok( lb.lbHatch == 0, "wrong hatch %lu\n", lb.lbHatch );
            }
            DeleteObject( brush );
        }
        else
        {
            ok( !brush, "%u: CreateHatchBrush succeeded\n", i );
            ok( GetLastError() == 0xdeadbeef, "wrong error %u\n", GetLastError() );
        }
    }
}
