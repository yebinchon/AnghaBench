
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int b ;
struct TYPE_4__ {int tag; } ;
typedef TYPE_1__ BMK_benchOutcome_t ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BMK_benchOutcome_t BMK_benchOutcome_error(void)
{
    BMK_benchOutcome_t b;
    memset(&b, 0, sizeof(b));
    b.tag = 1;
    return b;
}
