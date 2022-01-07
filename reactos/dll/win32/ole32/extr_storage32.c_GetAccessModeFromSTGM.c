
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ERR (char*) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int STGM_ACCESS_MODE (int) ;



 int assert (int ) ;

__attribute__((used)) static DWORD GetAccessModeFromSTGM(DWORD stgm)
{
  switch (STGM_ACCESS_MODE(stgm))
  {
  case 130:
    return GENERIC_READ;
  case 128:
  case 129:
    return GENERIC_READ | GENERIC_WRITE;
  }
  ERR("Invalid access mode!\n");
  assert(0);
  return 0;
}
