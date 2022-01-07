
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int DWORD ;


 int ERR (char*,int) ;
 int E_FAIL ;
 int STGM_ACCESS_MODE (int) ;
 int STGM_CONVERT ;

 int STGM_CREATE_MODE (int) ;

 int STGM_KNOWN_FLAGS ;
 int STGM_NOSCRATCH ;
 int STGM_NOSNAPSHOT ;






 int STGM_SHARE_MODE (int) ;
 int STGM_SIMPLE ;
 int STGM_TRANSACTED ;

 int S_OK ;

__attribute__((used)) static HRESULT validateSTGM(DWORD stgm)
{
  DWORD access = STGM_ACCESS_MODE(stgm);
  DWORD share = STGM_SHARE_MODE(stgm);
  DWORD create = STGM_CREATE_MODE(stgm);

  if (stgm&~STGM_KNOWN_FLAGS)
  {
    ERR("unknown flags %08x\n", stgm);
    return E_FAIL;
  }

  switch (access)
  {
  case 134:
  case 128:
  case 133:
    break;
  default:
    return E_FAIL;
  }

  switch (share)
  {
  case 132:
  case 131:
  case 130:
  case 129:
    break;
  case 0:
    if (!(stgm & STGM_TRANSACTED))
      return E_FAIL;
    break;
  default:
    return E_FAIL;
  }

  switch (create)
  {
  case 136:
  case 135:
    break;
  default:
    return E_FAIL;
  }




  if ( (stgm & STGM_TRANSACTED) && (stgm & STGM_SIMPLE) )
      return E_FAIL;





  if ( create == 136 && (stgm & STGM_CONVERT) )
    return E_FAIL;




  if ( (stgm & STGM_NOSCRATCH) && !(stgm & STGM_TRANSACTED) )
    return E_FAIL;





  if ( (stgm & STGM_NOSNAPSHOT) &&
        (!(stgm & STGM_TRANSACTED) ||
         share == 129 ||
         share == 130) )
    return E_FAIL;

  return S_OK;
}
