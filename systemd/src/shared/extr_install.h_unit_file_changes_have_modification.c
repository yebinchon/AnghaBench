
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ UnitFileChange ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int UNIT_FILE_SYMLINK ;
 int UNIT_FILE_UNLINK ;

__attribute__((used)) static inline bool unit_file_changes_have_modification(const UnitFileChange* changes, size_t n_changes) {
        size_t i;
        for (i = 0; i < n_changes; i++)
                if (IN_SET(changes[i].type, UNIT_FILE_SYMLINK, UNIT_FILE_UNLINK))
                        return 1;
        return 0;
}
