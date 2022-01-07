
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;


 int DNS_LABEL_MAX ;
 int ascii_strlower_n (char*,int) ;
 int assert (char const*) ;
 int dns_label_unescape (char const**,char*,int,int ) ;
 int siphash24_compress (char*,int,struct siphash*) ;
 int siphash24_compress_byte (int ,struct siphash*) ;
 int string_hash_func (char*,struct siphash*) ;

void dns_name_hash_func(const char *p, struct siphash *state) {
        int r;

        assert(p);

        for (;;) {
                char label[DNS_LABEL_MAX+1];

                r = dns_label_unescape(&p, label, sizeof label, 0);
                if (r < 0)
                        break;
                if (r == 0)
                        break;

                ascii_strlower_n(label, r);
                siphash24_compress(label, r, state);
                siphash24_compress_byte(0, state);
        }


        string_hash_func("", state);
}
