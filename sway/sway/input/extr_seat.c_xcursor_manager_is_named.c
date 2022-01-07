
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xcursor_manager {scalar_t__ name; } ;


 scalar_t__ strcmp (char const*,scalar_t__) ;

__attribute__((used)) static bool xcursor_manager_is_named(const struct wlr_xcursor_manager *manager,
  const char *name) {
 return (!manager->name && !name) ||
  (name && manager->name && strcmp(name, manager->name) == 0);
}
