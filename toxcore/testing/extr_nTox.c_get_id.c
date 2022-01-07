
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Tox ;


 int TOX_ADDRESS_SIZE ;
 int fraddr_to_str (int *,char*) ;
 int sprintf (char*,char*) ;
 int strlen (char*) ;
 int tox_self_get_address (int *,int *) ;

void get_id(Tox *m, char *data)
{
    sprintf(data, "[i] ID: ");
    int offset = strlen(data);
    uint8_t address[TOX_ADDRESS_SIZE];
    tox_self_get_address(m, address);
    fraddr_to_str(address, data + offset);
}
