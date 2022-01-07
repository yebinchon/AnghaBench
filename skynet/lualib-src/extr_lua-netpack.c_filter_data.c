
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int filter_data_ (int *,int,int *,int) ;
 int skynet_free (int *) ;

__attribute__((used)) static inline int
filter_data(lua_State *L, int fd, uint8_t * buffer, int size) {
 int ret = filter_data_(L, fd, buffer, size);


 skynet_free(buffer);
 return ret;
}
