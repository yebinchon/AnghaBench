
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_id128_t ;
struct TYPE_4__ {int raw_data_len; scalar_t__ type; int raw_data; } ;
typedef TYPE_1__ DUID ;


 scalar_t__ DUID_TYPE_UUID ;
 int EINVAL ;
 int assert (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int duid_set_uuid(DUID *duid, sd_id128_t uuid) {
        assert(duid);

        if (duid->raw_data_len > 0)
                return 0;

        if (duid->type != DUID_TYPE_UUID)
                return -EINVAL;

        memcpy(&duid->raw_data, &uuid, sizeof(sd_id128_t));
        duid->raw_data_len = sizeof(sd_id128_t);

        return 1;
}
