
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int member_2; int from; int member_1; int member_0; } ;
typedef TYPE_1__ BracketPair ;


 int BIDI_BRACKET_LEN ;
 int bracket_pairs ;
 scalar_t__ bsearch (TYPE_1__*,int ,int ,int,int ) ;
 int compare_bp ;

__attribute__((used)) static BracketPair *search_bp(uint32_t code)
{
    BracketPair bp = {0,0,2};
    BracketPair *res;

    bp.from = code;
    res = (BracketPair *) bsearch(&bp, bracket_pairs, BIDI_BRACKET_LEN,
                                 sizeof(BracketPair), compare_bp);
    return res;
}
