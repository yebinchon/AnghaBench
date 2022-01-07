
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buf {int dummy; } ;


 int houdini_escape_html0 (struct buf*,int const*,size_t,int ) ;

__attribute__((used)) static inline void escape_html(struct buf *ob, const uint8_t *source, size_t length)
{
 houdini_escape_html0(ob, source, length, 0);
}
