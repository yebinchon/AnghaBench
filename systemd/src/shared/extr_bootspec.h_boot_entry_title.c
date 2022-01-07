
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* id; scalar_t__ title; scalar_t__ show_title; } ;
typedef TYPE_1__ BootEntry ;



__attribute__((used)) static inline const char* boot_entry_title(const BootEntry *entry) {
        return entry->show_title ?: entry->title ?: entry->id;
}
