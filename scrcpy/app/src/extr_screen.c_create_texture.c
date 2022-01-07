
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct size {int height; int width; } ;
typedef int SDL_Texture ;
typedef int SDL_Renderer ;


 int * SDL_CreateTexture (int *,int ,int ,int ,int ) ;
 int SDL_PIXELFORMAT_YV12 ;
 int SDL_TEXTUREACCESS_STREAMING ;

__attribute__((used)) static inline SDL_Texture *
create_texture(SDL_Renderer *renderer, struct size frame_size) {
    return SDL_CreateTexture(renderer, SDL_PIXELFORMAT_YV12,
                             SDL_TEXTUREACCESS_STREAMING,
                             frame_size.width, frame_size.height);
}
