
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct box {int * cell; } ;



__attribute__((used)) static inline char *
box_text_offset(struct box *box, size_t cells)
{
 return (char *) &box->cell[cells];
}
