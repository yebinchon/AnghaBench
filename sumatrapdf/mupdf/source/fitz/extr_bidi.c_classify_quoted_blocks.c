
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint32_t ;
typedef int fz_bidi_chartype ;






 int BDI_PDF ;


 int FALSE ;


 int TRUE ;
 int direction_from_type (int) ;

__attribute__((used)) static void
classify_quoted_blocks(const uint32_t *text,
  fz_bidi_chartype *types,
  size_t len)
{
 size_t i;
 int inQuote = FALSE;
 int pdfNeeded = FALSE;
 int ltrFound = FALSE;
 int rtlFound = FALSE;




 for (i = 0; i < len; i++)
 {
  switch (direction_from_type(types[i]))
  {
  case 129:
   ltrFound = TRUE;
   break;

  case 128:
   rtlFound = TRUE;
   break;

  default:
   break;
  }
 }




 if (!ltrFound || !rtlFound)
 {
  return;
 }

 for (i = 0; i < len; i++)
 {
  if (text[i]=='"')
  {



   if (inQuote)
   {
    inQuote = FALSE;
    if (pdfNeeded)
    {
     pdfNeeded = FALSE;
     types[i] = BDI_PDF;
    }
   }
   else
   {
    size_t j;
    int done = FALSE;

    inQuote = TRUE;







    for (j = i + 1; !done && (j < len) && text[j] != '"'; ++j)
    {
     switch(types[j])
     {
     case 130:
     case 132:
      done = TRUE;
      break;

     case 133:
     case 134:
      types[i] = 132;
      pdfNeeded = TRUE;
      done = TRUE;
      break;

     case 131:
     case 135:
      types[i] = 130;
      pdfNeeded = TRUE;
      done = TRUE;
      break;

     default:
      break;
     }
    }
   }
  }
 }
}
