
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int process_t ;


 int adb_push (char const*,char const*,char const*) ;

__attribute__((used)) static process_t
push_file(const char *serial, const char *file, const char *push_target) {
    return adb_push(serial, file, push_target);
}
