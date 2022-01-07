
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int BrushAttr; int * pBrushAttr; } ;
typedef TYPE_1__* PPEN ;



__attribute__((used)) static
VOID
PEN_vInit(
    PPEN ppen)
{

    ppen->pBrushAttr = &ppen->BrushAttr;
}
