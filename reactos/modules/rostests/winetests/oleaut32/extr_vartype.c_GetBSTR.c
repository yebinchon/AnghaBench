
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szString; } ;
typedef TYPE_1__* LPINTERNAL_BSTR ;
typedef int BSTR ;



__attribute__((used)) static inline BSTR GetBSTR(const LPINTERNAL_BSTR bstr)
{
  return (BSTR)bstr->szString;
}
