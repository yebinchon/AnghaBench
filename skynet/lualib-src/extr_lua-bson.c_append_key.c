
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {int dummy; } ;
typedef int lua_State ;


 int write_byte (struct bson*,int) ;
 int write_string (struct bson*,int *,char const*,size_t) ;

__attribute__((used)) static inline void
append_key(struct bson *bs, lua_State *L, int type, const char *key, size_t sz) {
 write_byte(bs, type);
 write_string(bs, L, key, sz);
}
