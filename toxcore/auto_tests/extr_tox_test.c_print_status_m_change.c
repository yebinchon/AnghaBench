
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int Tox ;


 scalar_t__ memcmp (int const*,char*,int) ;
 int status_m_changes ;

void print_status_m_change(Tox *tox, uint32_t friend_number, const uint8_t *message, size_t length, void *user_data)
{
    if (*((uint32_t *)user_data) != 974536)
        return;

    if (length == sizeof("Installing Gentoo") && memcmp(message, "Installing Gentoo", sizeof("Installing Gentoo")) == 0)
        ++status_m_changes;
}
