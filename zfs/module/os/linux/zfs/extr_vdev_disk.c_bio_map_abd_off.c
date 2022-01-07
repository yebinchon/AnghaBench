
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
typedef int abd_t ;


 scalar_t__ abd_is_linear (int *) ;
 unsigned int abd_scatter_bio_map_off (struct bio*,int *,unsigned int,size_t) ;
 scalar_t__ abd_to_buf (int *) ;
 unsigned int bio_map (struct bio*,char*,unsigned int) ;

__attribute__((used)) static unsigned int
bio_map_abd_off(struct bio *bio, abd_t *abd, unsigned int size, size_t off)
{
 if (abd_is_linear(abd))
  return (bio_map(bio, ((char *)abd_to_buf(abd)) + off, size));

 return (abd_scatter_bio_map_off(bio, abd, size, off));
}
