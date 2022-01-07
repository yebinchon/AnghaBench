
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_watcher {float* interface; } ;


 size_t strlen (char*) ;

__attribute__((used)) static bool using_standard_protocol(struct swaybar_watcher *watcher) {
 return watcher->interface[strlen("org.")] == 'f';
}
