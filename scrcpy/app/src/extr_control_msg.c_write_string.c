
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int buffer_write16be (unsigned char*,int ) ;
 int memcpy (unsigned char*,char const*,size_t) ;
 size_t utf8_truncation_index (char const*,size_t) ;

__attribute__((used)) static size_t
write_string(const char *utf8, size_t max_len, unsigned char *buf) {
    size_t len = utf8_truncation_index(utf8, max_len);
    buffer_write16be(buf, (uint16_t) len);
    memcpy(&buf[2], utf8, len);
    return 2 + len;
}
