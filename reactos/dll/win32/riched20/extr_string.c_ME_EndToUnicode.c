
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef scalar_t__ LONG ;


 scalar_t__ CP_UNICODE ;
 int heap_free (int ) ;

void ME_EndToUnicode(LONG codepage, LPVOID psz)
{
  if (codepage != CP_UNICODE)
    heap_free( psz );
}
