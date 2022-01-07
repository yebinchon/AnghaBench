
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_INVALID ;
 int MODE_INVALID ;
 int UID_INVALID ;
 int USEC_INFINITY ;
 int touch_file (char const*,int,int ,int ,int ,int ) ;

int touch(const char *path) {
        return touch_file(path, 0, USEC_INFINITY, UID_INVALID, GID_INVALID, MODE_INVALID);
}
