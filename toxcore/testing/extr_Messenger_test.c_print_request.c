
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int Messenger ;


 int m_addfriend_norequest (int *,int const*) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int printf (char*,...) ;

void print_request(Messenger *m, const uint8_t *public_key, const uint8_t *data, size_t length, void *userdata)
{
    printf("Friend request received from: \n");
    printf("ClientID: ");
    uint32_t j;

    for (j = 0; j < 32; j++) {
        if (public_key[j] < 16)
            printf("0");

        printf("%hhX", public_key[j]);
    }

    printf("\nOf length: %lu with data: %s \n", length, data);

    if (length != sizeof("Install Gentoo")) {
        return;
    }

    if (memcmp(data , "Install Gentoo", sizeof("Install Gentoo")) == 0 )

    {
        printf("Friend request accepted.\n");
        m_addfriend_norequest(m, public_key);
    }
}
