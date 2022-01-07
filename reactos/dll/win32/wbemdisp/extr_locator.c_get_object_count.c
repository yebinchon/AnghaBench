
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int IEnumWbemClassObject ;


 int IEnumWbemClassObject_Reset (int *) ;
 scalar_t__ IEnumWbemClassObject_Skip (int *,int ,int) ;
 scalar_t__ S_OK ;
 int WBEM_INFINITE ;

__attribute__((used)) static LONG get_object_count( IEnumWbemClassObject *iter )
{
    LONG count = 0;
    while (IEnumWbemClassObject_Skip( iter, WBEM_INFINITE, 1 ) == S_OK) count++;
    IEnumWbemClassObject_Reset( iter );
    return count;
}
