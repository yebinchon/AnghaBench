
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int linebreak_class; int category; } ;
typedef TYPE_1__ UCDRecord ;


 int UCDN_GENERAL_CATEGORY_MC ;
 int UCDN_GENERAL_CATEGORY_MN ;

 int UCDN_LINEBREAK_CLASS_AL ;
 int UCDN_LINEBREAK_CLASS_B2 ;
 int UCDN_LINEBREAK_CLASS_BK ;


 int UCDN_LINEBREAK_CLASS_CM ;

 int UCDN_LINEBREAK_CLASS_NS ;



 TYPE_1__* get_ucd_record (int ) ;

int ucdn_get_resolved_linebreak_class(uint32_t code)
{
 const UCDRecord *record = get_ucd_record(code);

 switch (record->linebreak_class)
 {
 case 134:
 case 129:
 case 128:
  return UCDN_LINEBREAK_CLASS_AL;

 case 130:
  if (record->category == UCDN_GENERAL_CATEGORY_MC ||
   record->category == UCDN_GENERAL_CATEGORY_MN)
   return UCDN_LINEBREAK_CLASS_CM;
  return UCDN_LINEBREAK_CLASS_AL;

 case 132:
  return UCDN_LINEBREAK_CLASS_NS;

 case 133:
  return UCDN_LINEBREAK_CLASS_B2;

 case 131:
  return UCDN_LINEBREAK_CLASS_BK;

 default:
  return record->linebreak_class;
 }
}
