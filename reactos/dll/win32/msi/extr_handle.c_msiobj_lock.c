
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSIOBJECTHDR ;


 int EnterCriticalSection (int *) ;
 int MSI_object_cs ;

void msiobj_lock( MSIOBJECTHDR *info )
{
    EnterCriticalSection( &MSI_object_cs );
}
