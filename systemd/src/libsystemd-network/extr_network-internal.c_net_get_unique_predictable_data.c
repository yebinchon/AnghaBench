
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sd_id128_t ;
typedef int sd_device ;
struct TYPE_2__ {int bytes; } ;


 int ENODATA ;
 TYPE_1__ HASH_KEY ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (int *) ;
 int htole64 (int ) ;
 int log_device_debug (int *,char*,char const*) ;
 int log_device_debug_errno (int *,int ,char*) ;
 int memcpy (int,char const*,size_t) ;
 char* net_get_name_persistent (int *) ;
 int newa (int,size_t) ;
 int sd_device_get_sysname (int *,char const**) ;
 int sd_id128_get_machine (int *) ;
 int siphash24 (int,size_t,int ) ;
 size_t strlen (char const*) ;
 int uint8_t ;
 int v ;

int net_get_unique_predictable_data(sd_device *device, bool use_sysname, uint64_t *result) {
        size_t l, sz = 0;
        const char *name;
        int r;
        uint8_t *v;

        assert(device);



        name = net_get_name_persistent(device);
        if (!name && use_sysname)
                (void) sd_device_get_sysname(device, &name);
        if (!name)
                return log_device_debug_errno(device, SYNTHETIC_ERRNO(ENODATA),
                                              "No stable identifying information found");

        log_device_debug(device, "Using \"%s\" as stable identifying information", name);
        l = strlen(name);
        sz = sizeof(sd_id128_t) + l;
        v = newa(uint8_t, sz);


        r = sd_id128_get_machine((sd_id128_t*) v);
        if (r < 0)
                 return r;
        memcpy(v + sizeof(sd_id128_t), name, l);



        *result = htole64(siphash24(v, sz, HASH_KEY.bytes));
        return 0;
}
