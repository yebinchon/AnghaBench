
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_gstrings {unsigned int len; int * data; } ;


 int ENODATA ;
 unsigned int ETH_GSTRING_LEN ;
 scalar_t__ streq (char*,char const*) ;

__attribute__((used)) static int find_feature_index(struct ethtool_gstrings *strings, const char *feature) {
        unsigned i;

        for (i = 0; i < strings->len; i++) {
                if (streq((char *) &strings->data[i * ETH_GSTRING_LEN], feature))
                        return i;
        }

        return -ENODATA;
}
