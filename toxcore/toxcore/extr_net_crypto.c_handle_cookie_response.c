
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint16_t ;
typedef int plain ;


 int COOKIE_LENGTH ;
 scalar_t__ COOKIE_RESPONSE_LENGTH ;
 int crypto_box_NONCEBYTES ;
 int decrypt_data_symmetric (int const*,int const*,int const*,scalar_t__,int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int handle_cookie_response(uint8_t *cookie, uint64_t *number, const uint8_t *packet, uint16_t length,
                                  const uint8_t *shared_key)
{
    if (length != COOKIE_RESPONSE_LENGTH)
        return -1;

    uint8_t plain[COOKIE_LENGTH + sizeof(uint64_t)];
    int len = decrypt_data_symmetric(shared_key, packet + 1, packet + 1 + crypto_box_NONCEBYTES,
                                     length - (1 + crypto_box_NONCEBYTES), plain);

    if (len != sizeof(plain))
        return -1;

    memcpy(cookie, plain, COOKIE_LENGTH);
    memcpy(number, plain + COOKIE_LENGTH, sizeof(uint64_t));
    return COOKIE_LENGTH;
}
