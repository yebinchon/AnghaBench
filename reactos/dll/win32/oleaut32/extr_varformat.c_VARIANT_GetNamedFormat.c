
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int const* format; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ NAMED_FORMAT ;
typedef int LPCWSTR ;
typedef TYPE_2__* LPCNAMED_FORMAT ;
typedef int BYTE ;


 int ARRAY_SIZE (int ) ;
 int FormatCompareFn ;
 int VARIANT_NamedFormats ;
 TYPE_2__* bsearch (TYPE_1__*,int ,int ,int,int ) ;

__attribute__((used)) static inline const BYTE *VARIANT_GetNamedFormat(LPCWSTR lpszFormat)
{
  NAMED_FORMAT key;
  LPCNAMED_FORMAT fmt;

  key.name = lpszFormat;
  fmt = bsearch(&key, VARIANT_NamedFormats, ARRAY_SIZE(VARIANT_NamedFormats),
                                 sizeof(NAMED_FORMAT), FormatCompareFn);
  return fmt ? fmt->format : ((void*)0);
}
