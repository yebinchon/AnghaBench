
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;



__attribute__((used)) static
LARGE_INTEGER
Large(
    ULONGLONG Value)
{
    LARGE_INTEGER Ret;
    Ret.QuadPart = Value;
    return Ret;
}
