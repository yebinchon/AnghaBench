
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WINE_WAVEMAP {int dummy; } ;
typedef int LRESULT ;
typedef int LPSTR ;


 int TRACE (char*,int ) ;
 struct WINE_WAVEMAP* oss ;

__attribute__((used)) static LRESULT WAVEMAP_drvOpen(LPSTR str)
{
    TRACE("(%p)\n", str);

    if (oss)
 return 0;


    oss = (struct WINE_WAVEMAP*)1;
    return 1;
}
