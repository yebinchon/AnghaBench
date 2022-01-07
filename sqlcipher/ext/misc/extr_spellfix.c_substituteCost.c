
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char CCLASS_B ;
 char CCLASS_Y ;
 char characterClass (char,char) ;

__attribute__((used)) static int substituteCost(char cPrev, char cFrom, char cTo){
  char classFrom, classTo;
  if( cFrom==cTo ){

    return 0;
  }
  if( cFrom==(cTo^0x20) && ((cTo>='A' && cTo<='Z') || (cTo>='a' && cTo<='z')) ){

    return 0;
  }
  classFrom = characterClass(cPrev, cFrom);
  classTo = characterClass(cPrev, cTo);
  if( classFrom==classTo ){

    return 40;
  }
  if( classFrom>=CCLASS_B && classFrom<=CCLASS_Y
      && classTo>=CCLASS_B && classTo<=CCLASS_Y ){

    return 75;
  }

  return 100;
}
