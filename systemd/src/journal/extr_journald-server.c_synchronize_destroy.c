
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int varlink_unref (void*) ;

__attribute__((used)) static void synchronize_destroy(void *userdata) {
        varlink_unref(userdata);
}
