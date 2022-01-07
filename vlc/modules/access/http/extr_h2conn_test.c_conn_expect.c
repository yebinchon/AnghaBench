
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_fast8_t ;
typedef scalar_t__ uint8_t ;
typedef int ssize_t ;


 scalar_t__ WINDOW_UPDATE ;
 int assert (int) ;
 int external_tls ;
 int vlc_tls_Read (int ,...) ;

__attribute__((used)) static void conn_expect(uint_fast8_t wanted)
{
    size_t len;
    ssize_t val;
    uint8_t hdr[9];
    uint8_t got;

    do {
        val = vlc_tls_Read(external_tls, hdr, 9, 1);
        assert(val == 9);
        assert(hdr[0] == 0);


        got = hdr[3];
        assert(wanted == got || WINDOW_UPDATE == got);

        len = (hdr[1] << 8) | hdr[2];
        if (len > 0)
        {
            char buf[len];

            val = vlc_tls_Read(external_tls, buf, len, 1);
            assert(val == (ssize_t)len);
        }
    }
    while (got != wanted);
}
