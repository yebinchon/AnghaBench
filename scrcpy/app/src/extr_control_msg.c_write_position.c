
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_3__ {int y; int x; } ;
struct position {TYPE_2__ screen_size; TYPE_1__ point; } ;


 int buffer_write16be (int *,int ) ;
 int buffer_write32be (int *,int ) ;

__attribute__((used)) static void
write_position(uint8_t *buf, const struct position *position) {
    buffer_write32be(&buf[0], position->point.x);
    buffer_write32be(&buf[4], position->point.y);
    buffer_write16be(&buf[8], position->screen_size.width);
    buffer_write16be(&buf[10], position->screen_size.height);
}
