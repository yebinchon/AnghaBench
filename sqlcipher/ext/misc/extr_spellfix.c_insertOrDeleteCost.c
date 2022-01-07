
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char CCLASS_SILENT ;
 char CCLASS_VOWEL ;
 char characterClass (char,char) ;

__attribute__((used)) static int insertOrDeleteCost(char cPrev, char c, char cNext){
  char classC = characterClass(cPrev, c);
  char classCprev;

  if( classC==CCLASS_SILENT ){

    return 1;
  }
  if( cPrev==c ){

    return 10;
  }
  if( classC==CCLASS_VOWEL && (cPrev=='r' || cNext=='r') ){
    return 20;
  }
  classCprev = characterClass(cPrev, cPrev);
  if( classC==classCprev ){
    if( classC==CCLASS_VOWEL ){

      return 15;
    }else{

      return 50;
    }
  }


  return 100;
}
