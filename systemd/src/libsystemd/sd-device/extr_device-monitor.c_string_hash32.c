
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MurmurHash2 (char const*,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static uint32_t string_hash32(const char *str) {
        return MurmurHash2(str, strlen(str), 0);
}
