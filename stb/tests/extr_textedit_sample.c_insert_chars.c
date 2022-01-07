
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stringlen; int * string; } ;
typedef TYPE_1__ STB_TEXTEDIT_STRING ;
typedef int STB_TEXTEDIT_CHARTYPE ;


 int memcpy (int *,int *,int) ;
 int memmove (int *,int *,scalar_t__) ;
 int * realloc (int *,scalar_t__) ;

int insert_chars(STB_TEXTEDIT_STRING *str, int pos, STB_TEXTEDIT_CHARTYPE *newtext, int num)
{
   str->string = realloc(str->string, str->stringlen + num);
   memmove(&str->string[pos+num], &str->string[pos], str->stringlen - pos);
   memcpy(&str->string[pos], newtext, num);
   str->stringlen += num;
   return 1;
}
