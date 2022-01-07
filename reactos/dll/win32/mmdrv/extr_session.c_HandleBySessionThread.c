
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SessionInfo ;
typedef int PVOID ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;


 int CallSessionThread (int *,scalar_t__,int ) ;

DWORD
HandleBySessionThread(
    DWORD_PTR private_handle,
    DWORD_PTR message,
    DWORD_PTR parameter)
{
    return CallSessionThread((SessionInfo*) private_handle,
                             message,
                             (PVOID) parameter);
}
