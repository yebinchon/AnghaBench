
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nBasis; } ;
typedef TYPE_1__ fuzzer_stem ;
struct TYPE_6__ {int iRuleset; scalar_t__ nTo; scalar_t__ nFrom; } ;
typedef TYPE_2__ fuzzer_rule ;


 scalar_t__ FUZZER_MX_OUTPUT_LENGTH ;

__attribute__((used)) static int fuzzerSkipRule(
  const fuzzer_rule *pRule,
  fuzzer_stem *pStem,
  int iRuleset
){
  return pRule && (
      (pRule->iRuleset!=iRuleset)
   || (pStem->nBasis + pRule->nTo - pRule->nFrom)>FUZZER_MX_OUTPUT_LENGTH
  );
}
