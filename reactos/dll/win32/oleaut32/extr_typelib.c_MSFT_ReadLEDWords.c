
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TLBContext ;
typedef int LONG ;
typedef int DWORD ;


 int FromLEDWords (void*,int ) ;
 int MSFT_Read (void*,int ,int *,int ) ;

__attribute__((used)) static DWORD MSFT_ReadLEDWords(void *buffer, DWORD count, TLBContext *pcx,
                               LONG where )
{
  DWORD ret;

  ret = MSFT_Read(buffer, count, pcx, where);
  FromLEDWords(buffer, ret);

  return ret;
}
