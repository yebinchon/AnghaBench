
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* st_isw; int* st_fold; int* st_upper; void** st_isu; } ;


 int FALSE ;
 int MB_BYTE2LEN (int) ;
 scalar_t__ MB_ISLOWER (int) ;
 scalar_t__ MB_ISUPPER (int) ;
 int MB_TOLOWER (int) ;
 int MB_TOUPPER (int) ;
 void* TRUE ;
 int clear_spell_chartab (TYPE_1__*) ;
 int did_set_spelltab ;
 scalar_t__ enc_dbcs ;
 scalar_t__ enc_utf8 ;
 TYPE_1__ spelltab ;
 int utf_fold (int) ;
 scalar_t__ utf_islower (int) ;
 void* utf_isupper (int) ;
 int utf_toupper (int) ;

void
init_spell_chartab()
{
    int i;

    did_set_spelltab = FALSE;
    clear_spell_chartab(&spelltab);
    {

 for (i = 128; i < 256; ++i)
 {
     if (MB_ISUPPER(i))
     {
  spelltab.st_isw[i] = TRUE;
  spelltab.st_isu[i] = TRUE;
  spelltab.st_fold[i] = MB_TOLOWER(i);
     }
     else if (MB_ISLOWER(i))
     {
  spelltab.st_isw[i] = TRUE;
  spelltab.st_upper[i] = MB_TOUPPER(i);
     }
 }
    }
}
