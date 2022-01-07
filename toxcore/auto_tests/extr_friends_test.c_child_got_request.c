
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int Messenger ;


 int FIRST_FLAG ;
 int fflush (int ) ;
 int fputs (char*,int ) ;
 int m_addfriend_norequest (int *,int *) ;
 int request_flags ;
 int stdout ;

void child_got_request(Messenger *m, uint8_t *public_key, uint8_t *data, uint16_t length, void *userdata)
{
    fputs("OK\nsending status to parent", stdout);
    fflush(stdout);
    m_addfriend_norequest(m, public_key);
    request_flags |= FIRST_FLAG;
}
