
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ BracketPair ;


 int UCDN_BIDI_PAIRED_BRACKET_TYPE_NONE ;
 TYPE_1__* search_bp (int ) ;

int ucdn_paired_bracket_type(uint32_t code)
{
 BracketPair *res = search_bp(code);
 if (res == ((void*)0))
  return UCDN_BIDI_PAIRED_BRACKET_TYPE_NONE;
 else
  return res->type;
}
