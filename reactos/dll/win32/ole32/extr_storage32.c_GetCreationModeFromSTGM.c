
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CREATE_NEW ;
 int ERR (char*) ;
 int FIXME (char*) ;


 int STGM_CREATE_MODE (int ) ;

 int assert (int ) ;

__attribute__((used)) static DWORD GetCreationModeFromSTGM(DWORD stgm)
{
  switch(STGM_CREATE_MODE(stgm))
  {
  case 129:
    return CREATE_ALWAYS;
  case 130:
    FIXME("STGM_CONVERT not implemented!\n");
    return CREATE_NEW;
  case 128:
    return CREATE_NEW;
  }
  ERR("Invalid create mode!\n");
  assert(0);
  return 0;
}
