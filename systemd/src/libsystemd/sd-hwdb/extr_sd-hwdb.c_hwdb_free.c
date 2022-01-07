
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int st_size; } ;
struct TYPE_9__ {int properties; int f; TYPE_1__ st; scalar_t__ map; } ;
typedef TYPE_2__ sd_hwdb ;


 int assert (TYPE_2__*) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int munmap (void*,int ) ;
 int ordered_hashmap_free (int ) ;
 int safe_fclose (int ) ;

__attribute__((used)) static sd_hwdb *hwdb_free(sd_hwdb *hwdb) {
        assert(hwdb);

        if (hwdb->map)
                munmap((void *)hwdb->map, hwdb->st.st_size);
        safe_fclose(hwdb->f);
        ordered_hashmap_free(hwdb->properties);
        return mfree(hwdb);
}
