
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVRET ;
typedef int BOOLEAN ;


 int DPRINT (int) ;
 int EvaluateSymbol (int ,char*) ;
 int ExtractToken (char*) ;

BOOLEAN Symbol(PVRET pvr)
{
 char SymbolToken[128];

 ExtractToken(SymbolToken);

 DPRINT((1,"SymbolToken = %s\n",SymbolToken));

    return EvaluateSymbol(pvr,SymbolToken);
}
