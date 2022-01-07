
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int UUID ;


 int RtlZeroMemory (int *,int) ;
 int UuidCreate (int *) ;

void uuid_generate(__u8 * uuid)
{



    RtlZeroMemory(uuid, 16);

}
