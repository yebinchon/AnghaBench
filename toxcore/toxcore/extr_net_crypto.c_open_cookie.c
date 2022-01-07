
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int cookie_time ;
typedef int contents ;


 int COOKIE_CONTENTS_LENGTH ;
 int COOKIE_DATA_LENGTH ;
 int COOKIE_LENGTH ;
 scalar_t__ COOKIE_TIMEOUT ;
 int crypto_box_NONCEBYTES ;
 int decrypt_data_symmetric (scalar_t__ const*,scalar_t__ const*,scalar_t__ const*,int,scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ unix_time () ;

__attribute__((used)) static int open_cookie(uint8_t *bytes, const uint8_t *cookie, const uint8_t *encryption_key)
{
    uint8_t contents[COOKIE_CONTENTS_LENGTH];
    int len = decrypt_data_symmetric(encryption_key, cookie, cookie + crypto_box_NONCEBYTES,
                                     COOKIE_LENGTH - crypto_box_NONCEBYTES, contents);

    if (len != sizeof(contents))
        return -1;

    uint64_t cookie_time;
    memcpy(&cookie_time, contents, sizeof(cookie_time));
    uint64_t temp_time = unix_time();

    if (cookie_time + COOKIE_TIMEOUT < temp_time || temp_time < cookie_time)
        return -1;

    memcpy(bytes, contents + sizeof(cookie_time), COOKIE_DATA_LENGTH);
    return 0;
}
