
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zwlr_layer_surface_v1 {int dummy; } ;
struct swaynag {int dummy; } ;


 int swaynag_destroy (struct swaynag*) ;

__attribute__((used)) static void layer_surface_closed(void *data,
  struct zwlr_layer_surface_v1 *surface) {
 struct swaynag *swaynag = data;
 swaynag_destroy(swaynag);
}
