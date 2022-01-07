
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIRECORD ;
typedef scalar_t__ LPVOID ;


 int ERROR_SUCCESS ;

__attribute__((used)) static UINT ITERATE_columns(MSIRECORD *row, LPVOID param)
{
    (*(UINT *)param)++;
    return ERROR_SUCCESS;
}
