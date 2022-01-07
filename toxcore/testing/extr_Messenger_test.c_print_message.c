
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int Messenger ;


 int m_send_message_generic (int *,int ,unsigned int,int *,int,int ) ;
 int printf (char*,size_t,int ,int const*) ;

void print_message(Messenger *m, uint32_t friendnumber, unsigned int type, const uint8_t *string, size_t length,
                   void *userdata)
{
    printf("Message with length %lu received from %u: %s \n", length, friendnumber, string);
    m_send_message_generic(m, friendnumber, type, (uint8_t *)"Test1", 6, 0);
}
