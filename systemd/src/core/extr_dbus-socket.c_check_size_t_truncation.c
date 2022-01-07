
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;



__attribute__((used)) static bool check_size_t_truncation(uint64_t t) {
        return (size_t) t == t;
}
