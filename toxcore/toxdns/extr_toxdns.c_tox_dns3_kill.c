
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DNS_Object ;


 int free (void*) ;
 int memset (void*,int ,int) ;

void tox_dns3_kill(void *dns3_object)
{
    memset(dns3_object, 0, sizeof(DNS_Object));
    free(dns3_object);
}
