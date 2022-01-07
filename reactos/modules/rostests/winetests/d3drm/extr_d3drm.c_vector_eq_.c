
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int x; } ;
struct TYPE_5__ {int y; } ;
struct TYPE_4__ {int z; } ;
typedef int D3DVECTOR ;


 TYPE_3__ U1 (int const) ;
 TYPE_2__ U2 (int const) ;
 TYPE_1__ U3 (int const) ;
 int expect_vector_ (unsigned int,int const*,int ,int ,int ,int ) ;

__attribute__((used)) static void vector_eq_(unsigned int line, const D3DVECTOR *left, const D3DVECTOR *right)
{
    expect_vector_(line, left, U1(*right).x, U2(*right).y, U3(*right).z, 0);
}
