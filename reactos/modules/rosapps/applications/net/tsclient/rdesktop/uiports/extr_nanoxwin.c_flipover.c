
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void flipover(uint8 * data)
{
  uint8 adata[128];
  int index;

  if (data == 0)
  {
    return;
  }
  memcpy(adata, data, 128);
  for (index = 0; index <= 31; index++)
  {
    data[127 - (index * 4 + 3)] = adata[index * 4];
    data[127 - (index * 4 + 2)] = adata[index * 4 + 1];
    data[127 - (index * 4 + 1)] = adata[index * 4 + 2];
    data[127 - index * 4] = adata[index * 4 + 3];
  }
}
