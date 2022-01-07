
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trie_node_f {int dummy; } ;
struct TYPE_3__ {scalar_t__ map; } ;
typedef TYPE_1__ sd_hwdb ;
typedef int le64_t ;


 scalar_t__ le64toh (int ) ;

__attribute__((used)) static const struct trie_node_f *trie_node_from_off(sd_hwdb *hwdb, le64_t off) {
        return (const struct trie_node_f *)(hwdb->map + le64toh(off));
}
