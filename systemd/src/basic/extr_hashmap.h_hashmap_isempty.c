
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 scalar_t__ hashmap_size (int *) ;

__attribute__((used)) static inline bool hashmap_isempty(Hashmap *h) {
        return hashmap_size(h) == 0;
}
