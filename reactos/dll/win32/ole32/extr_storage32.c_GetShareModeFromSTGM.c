
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ERR (char*) ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;




 int STGM_SHARE_MODE (int) ;
 int STGM_TRANSACTED ;
 int assert (int) ;

__attribute__((used)) static DWORD GetShareModeFromSTGM(DWORD stgm)
{
  switch (STGM_SHARE_MODE(stgm))
  {
  case 0:
    assert(stgm & STGM_TRANSACTED);

  case 131:
    return FILE_SHARE_READ | FILE_SHARE_WRITE;
  case 130:
    return FILE_SHARE_WRITE;
  case 129:
  case 128:
    return FILE_SHARE_READ;
  }
  ERR("Invalid share mode!\n");
  assert(0);
  return 0;
}
