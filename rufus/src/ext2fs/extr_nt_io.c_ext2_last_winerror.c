
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ERROR_SEVERITY_ERROR ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 int LastWinError ;

DWORD ext2_last_winerror(DWORD default_error)
{
 return ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | (LastWinError ? LastWinError : default_error);
}
