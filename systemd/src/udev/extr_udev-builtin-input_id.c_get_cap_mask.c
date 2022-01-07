
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 unsigned int BITS_PER_LONG ;
 int DISABLE_WARNING_FORMAT_NONLITERAL ;
 int REENABLE_WARNING ;
 int log_device_debug (int *,char*,...) ;
 int memzero (unsigned long*,size_t) ;
 scalar_t__ sd_device_get_sysattr_value (int *,char const*,char const**) ;
 char* strrchr (char*,char) ;
 unsigned long strtoul (char*,int *,int) ;
 int xsprintf (char*,char*,...) ;

__attribute__((used)) static void get_cap_mask(sd_device *pdev, const char* attr,
                         unsigned long *bitmask, size_t bitmask_size,
                         bool test) {
        const char *v;
        char text[4096];
        unsigned i;
        char* word;
        unsigned long val;

        if (sd_device_get_sysattr_value(pdev, attr, &v) < 0)
                v = "";

        xsprintf(text, "%s", v);
        log_device_debug(pdev, "%s raw kernel attribute: %s", attr, text);

        memzero(bitmask, bitmask_size);
        i = 0;
        while ((word = strrchr(text, ' ')) != ((void*)0)) {
                val = strtoul(word+1, ((void*)0), 16);
                if (i < bitmask_size / sizeof(unsigned long))
                        bitmask[i] = val;
                else
                        log_device_debug(pdev, "Ignoring %s block %lX which is larger than maximum size", attr, val);
                *word = '\0';
                ++i;
        }
        val = strtoul (text, ((void*)0), 16);
        if (i < bitmask_size / sizeof(unsigned long))
                bitmask[i] = val;
        else
                log_device_debug(pdev, "Ignoring %s block %lX which is larger than maximum size", attr, val);

        if (test) {

                xsprintf(text, "  bit %%4u: %%0%zulX\n",
                         2 * sizeof(unsigned long));
                log_device_debug(pdev, "%s decoded bit map:", attr);
                val = bitmask_size / sizeof (unsigned long);

                while (bitmask[val-1] == 0 && val > 0)
                        --val;
                for (i = 0; i < val; ++i) {
                        DISABLE_WARNING_FORMAT_NONLITERAL;
                        log_device_debug(pdev, text, i * BITS_PER_LONG, bitmask[i]);
                        REENABLE_WARNING;
                }
        }
}
