
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int UINT ;
struct TYPE_3__ {int style; unsigned int buffer_limit; } ;
typedef TYPE_1__ EDITSTATE ;


 int ES_MULTILINE ;
 unsigned int min (unsigned int,int) ;

__attribute__((used)) static void EDIT_EM_SetLimitText(EDITSTATE *es, UINT limit)
{
    if (!limit) limit = ~0u;
    if (!(es->style & ES_MULTILINE)) limit = min(limit, 0x7ffffffe);
    es->buffer_limit = limit;
}
