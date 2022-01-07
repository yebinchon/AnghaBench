
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int to; } ;
typedef TYPE_1__ BracketPair ;


 TYPE_1__* search_bp (int ) ;

uint32_t ucdn_paired_bracket(uint32_t code)
{
    BracketPair *res = search_bp(code);
    if (res == ((void*)0))
        return code;
    else
        return res->to;
}
