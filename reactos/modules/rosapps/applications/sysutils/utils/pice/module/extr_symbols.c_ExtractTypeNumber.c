
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ LPSTR ;


 int DPRINT (int ) ;
 int ExtractNumber (scalar_t__) ;
 scalar_t__ PICE_strchr (scalar_t__,char) ;

ULONG ExtractTypeNumber(LPSTR p)
{
 LPSTR pTypeNumber;
 ULONG ulTypeNumber = 0;

    DPRINT((0,"ExtractTypeNumber(%s)\n",p));

 pTypeNumber = PICE_strchr(p,'(');

 if(pTypeNumber)
 {
  pTypeNumber++;
  ulTypeNumber = ExtractNumber(pTypeNumber);
  ulTypeNumber <<= 16;
  pTypeNumber = PICE_strchr(p,',');
        if(pTypeNumber)
        {
      pTypeNumber++;
      ulTypeNumber += ExtractNumber(pTypeNumber);
        }
        else
        {
            ulTypeNumber = 0;
        }
 }
 return ulTypeNumber;
}
