
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WRes ;
typedef int UInt16 ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef int CSzFile ;
typedef TYPE_1__ CBuf ;


 int Buf_Free (TYPE_1__*,int *) ;
 int Buf_Init (TYPE_1__*) ;
 int OutFile_Open (int *,char const*) ;
 int OutFile_OpenW (int *,int const*) ;
 int RINOK (int ) ;
 int Utf16_To_Char (TYPE_1__*,int const*,int) ;
 int g_Alloc ;

__attribute__((used)) static WRes OutFile_OpenUtf16(CSzFile *p, const UInt16 *name)
{



  CBuf buf;
  WRes res;
  Buf_Init(&buf);
  RINOK(Utf16_To_Char(&buf, name, 1));
  res = OutFile_Open(p, (const char *)buf.data);
  Buf_Free(&buf, &g_Alloc);
  return res;

}
